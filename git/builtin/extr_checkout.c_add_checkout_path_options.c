
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;
struct checkout_opts {int ignore_skipworktree; int patch_mode; int writeout_stage; } ;


 int N_ (char*) ;
 struct option OPT_BOOL (char,char*,int *,int ) ;
 struct option OPT_END () ;
 struct option OPT_SET_INT_F (char,char*,int *,int ,int,int ) ;
 int PARSE_OPT_NONEG ;
 int free (struct option*) ;
 struct option* parse_options_concat (struct option*,struct option*) ;

__attribute__((used)) static struct option *add_checkout_path_options(struct checkout_opts *opts,
      struct option *prevopts)
{
 struct option options[] = {
  OPT_SET_INT_F('2', "ours", &opts->writeout_stage,
         N_("checkout our version for unmerged files"),
         2, PARSE_OPT_NONEG),
  OPT_SET_INT_F('3', "theirs", &opts->writeout_stage,
         N_("checkout their version for unmerged files"),
         3, PARSE_OPT_NONEG),
  OPT_BOOL('p', "patch", &opts->patch_mode, N_("select hunks interactively")),
  OPT_BOOL(0, "ignore-skip-worktree-bits", &opts->ignore_skipworktree,
    N_("do not limit pathspecs to sparse entries only")),
  OPT_END()
 };
 struct option *newopts = parse_options_concat(prevopts, options);
 free(prevopts);
 return newopts;
}
