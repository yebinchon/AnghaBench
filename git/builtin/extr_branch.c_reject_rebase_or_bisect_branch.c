
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worktree {int path; int is_detached; } ;


 int _ (char*) ;
 int die (int ,char const*,int ) ;
 int free_worktrees (struct worktree**) ;
 struct worktree** get_worktrees (int ) ;
 scalar_t__ is_worktree_being_bisected (struct worktree*,char const*) ;
 scalar_t__ is_worktree_being_rebased (struct worktree*,char const*) ;

__attribute__((used)) static void reject_rebase_or_bisect_branch(const char *target)
{
 struct worktree **worktrees = get_worktrees(0);
 int i;

 for (i = 0; worktrees[i]; i++) {
  struct worktree *wt = worktrees[i];

  if (!wt->is_detached)
   continue;

  if (is_worktree_being_rebased(wt, target))
   die(_("Branch %s is being rebased at %s"),
       target, wt->path);

  if (is_worktree_being_bisected(wt, target))
   die(_("Branch %s is being bisected at %s"),
       target, wt->path);
 }

 free_worktrees(worktrees);
}
