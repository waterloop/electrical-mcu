printf "enter branch name: "
read B_NAME

WORKTREE_ADD_CMD="git worktree add ./${B_NAME} ${B_NAME}"
GIT_IGNORE_ENTRY="${B_NAME}/"

git branch $B_NAME
echo ${WORKTREE_ADD_CMD} >> install.sh
echo ${GIT_IGNORE_ENTRY} >> .gitignore

./install.sh

