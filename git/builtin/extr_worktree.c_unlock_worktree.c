
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worktree {int id; } ;
struct option {int dummy; } ;


 struct option OPT_END () ;
 int _ (char*) ;
 int die (int ,...) ;
 struct worktree* find_worktree (struct worktree**,char const*,char const*) ;
 int free_worktrees (struct worktree**) ;
 struct worktree** get_worktrees (int ) ;
 int git_common_path (char*,int ) ;
 scalar_t__ is_main_worktree (struct worktree*) ;
 int parse_options (int,char const**,char const*,struct option*,int ,int ) ;
 int unlink_or_warn (int ) ;
 int usage_with_options (int ,struct option*) ;
 int worktree_lock_reason (struct worktree*) ;
 int worktree_usage ;

__attribute__((used)) static int unlock_worktree(int ac, const char **av, const char *prefix)
{
 struct option options[] = {
  OPT_END()
 };
 struct worktree **worktrees, *wt;
 int ret;

 ac = parse_options(ac, av, prefix, options, worktree_usage, 0);
 if (ac != 1)
  usage_with_options(worktree_usage, options);

 worktrees = get_worktrees(0);
 wt = find_worktree(worktrees, prefix, av[0]);
 if (!wt)
  die(_("'%s' is not a working tree"), av[0]);
 if (is_main_worktree(wt))
  die(_("The main working tree cannot be locked or unlocked"));
 if (!worktree_lock_reason(wt))
  die(_("'%s' is not locked"), av[0]);
 ret = unlink_or_warn(git_common_path("worktrees/%s/locked", wt->id));
 free_worktrees(worktrees);
 return ret;
}
