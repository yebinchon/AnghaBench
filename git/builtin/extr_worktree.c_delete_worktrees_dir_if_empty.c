
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_path (char*) ;
 int rmdir (int ) ;

__attribute__((used)) static void delete_worktrees_dir_if_empty(void)
{
 rmdir(git_path("worktrees"));
}
