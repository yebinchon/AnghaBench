
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worktree {int id; } ;
struct add_opts {int force; } ;


 int _ (char*) ;
 scalar_t__ delete_git_dir (int ) ;
 int die (int ,char const*) ;
 scalar_t__ file_exists (char const*) ;
 struct worktree* find_worktree (struct worktree**,int *,char const*) ;
 int free_worktrees (struct worktree**) ;
 struct worktree** get_worktrees (int ) ;
 int is_empty_dir (char const*) ;
 int worktree_lock_reason (struct worktree*) ;

__attribute__((used)) static void validate_worktree_add(const char *path, const struct add_opts *opts)
{
 struct worktree **worktrees;
 struct worktree *wt;
 int locked;

 if (file_exists(path) && !is_empty_dir(path))
  die(_("'%s' already exists"), path);

 worktrees = get_worktrees(0);







 wt = find_worktree(worktrees + 1, ((void*)0), path);
 if (!wt)
  goto done;

 locked = !!worktree_lock_reason(wt);
 if ((!locked && opts->force) || (locked && opts->force > 1)) {
  if (delete_git_dir(wt->id))
      die(_("unable to re-add worktree '%s'"), path);
  goto done;
 }

 if (locked)
  die(_("'%s' is a missing but locked worktree;\nuse 'add -f -f' to override, or 'unlock' and 'prune' or 'remove' to clear"), path);
 else
  die(_("'%s' is a missing but already registered worktree;\nuse 'add -f' to override, or 'prune' or 'remove' to clear"), path);

done:
 free_worktrees(worktrees);
}
