
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worktree {int id; } ;
struct option {int dummy; } ;


 int N_ (char*) ;
 struct option OPT_END () ;
 struct option OPT_STRING (int ,char*,char const**,int ,int ) ;
 int _ (char*) ;
 int die (int ,...) ;
 struct worktree* find_worktree (struct worktree**,char const*,char const*) ;
 int free_worktrees (struct worktree**) ;
 struct worktree** get_worktrees (int ) ;
 int git_common_path (char*,int ) ;
 scalar_t__ is_main_worktree (struct worktree*) ;
 int parse_options (int,char const**,char const*,struct option*,int ,int ) ;
 int usage_with_options (int ,struct option*) ;
 char* worktree_lock_reason (struct worktree*) ;
 int worktree_usage ;
 int write_file (int ,char*,char const*) ;

__attribute__((used)) static int lock_worktree(int ac, const char **av, const char *prefix)
{
 const char *reason = "", *old_reason;
 struct option options[] = {
  OPT_STRING(0, "reason", &reason, N_("string"),
      N_("reason for locking")),
  OPT_END()
 };
 struct worktree **worktrees, *wt;

 ac = parse_options(ac, av, prefix, options, worktree_usage, 0);
 if (ac != 1)
  usage_with_options(worktree_usage, options);

 worktrees = get_worktrees(0);
 wt = find_worktree(worktrees, prefix, av[0]);
 if (!wt)
  die(_("'%s' is not a working tree"), av[0]);
 if (is_main_worktree(wt))
  die(_("The main working tree cannot be locked or unlocked"));

 old_reason = worktree_lock_reason(wt);
 if (old_reason) {
  if (*old_reason)
   die(_("'%s' is already locked, reason: %s"),
       av[0], old_reason);
  die(_("'%s' is already locked"), av[0]);
 }

 write_file(git_common_path("worktrees/%s/locked", wt->id),
     "%s", reason);
 free_worktrees(worktrees);
 return 0;
}
