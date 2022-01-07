
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;
struct checkout_opts {int ignore_other_worktrees; int overwrite_ignore; int new_orphan_branch; int force; int track; int force_detach; } ;


 int BRANCH_TRACK_EXPLICIT ;
 int N_ (char*) ;
 struct option OPT_BOOL (char,char*,int *,int ) ;
 struct option OPT_BOOL_F (int ,char*,int *,int ,int ) ;
 struct option OPT_END () ;
 struct option OPT_SET_INT (char,char*,int *,int ,int ) ;
 struct option OPT_STRING (int ,char*,int *,int ,int ) ;
 struct option OPT__FORCE (int *,int ,int ) ;
 int PARSE_OPT_NOCOMPLETE ;
 int free (struct option*) ;
 struct option* parse_options_concat (struct option*,struct option*) ;

__attribute__((used)) static struct option *add_common_switch_branch_options(
 struct checkout_opts *opts, struct option *prevopts)
{
 struct option options[] = {
  OPT_BOOL('d', "detach", &opts->force_detach, N_("detach HEAD at named commit")),
  OPT_SET_INT('t', "track", &opts->track, N_("set upstream info for new branch"),
   BRANCH_TRACK_EXPLICIT),
  OPT__FORCE(&opts->force, N_("force checkout (throw away local modifications)"),
      PARSE_OPT_NOCOMPLETE),
  OPT_STRING(0, "orphan", &opts->new_orphan_branch, N_("new-branch"), N_("new unparented branch")),
  OPT_BOOL_F(0, "overwrite-ignore", &opts->overwrite_ignore,
      N_("update ignored files (default)"),
      PARSE_OPT_NOCOMPLETE),
  OPT_BOOL(0, "ignore-other-worktrees", &opts->ignore_other_worktrees,
    N_("do not check if another worktree is holding the given ref")),
  OPT_END()
 };
 struct option *newopts = parse_options_concat(prevopts, options);
 free(prevopts);
 return newopts;
}
