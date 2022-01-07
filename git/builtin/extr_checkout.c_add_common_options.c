
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* member_2; char* member_4; char* member_5; int member_7; int member_6; int * member_3; int member_1; int member_0; } ;
struct checkout_opts {int conflict_style; int merge; int show_progress; int quiet; } ;


 int N_ (char*) ;
 int OPTION_CALLBACK ;
 struct option OPT_BOOL (char,char*,int *,int ) ;
 struct option OPT_END () ;
 struct option OPT_STRING (int ,char*,int *,int ,int ) ;
 struct option OPT__QUIET (int *,int ) ;
 int PARSE_OPT_OPTARG ;
 int free (struct option*) ;
 int option_parse_recurse_submodules_worktree_updater ;
 struct option* parse_options_concat (struct option*,struct option*) ;

__attribute__((used)) static struct option *add_common_options(struct checkout_opts *opts,
      struct option *prevopts)
{
 struct option options[] = {
  OPT__QUIET(&opts->quiet, N_("suppress progress reporting")),
  { OPTION_CALLBACK, 0, "recurse-submodules", ((void*)0),
       "checkout", "control recursive updating of submodules",
       PARSE_OPT_OPTARG, option_parse_recurse_submodules_worktree_updater },
  OPT_BOOL(0, "progress", &opts->show_progress, N_("force progress reporting")),
  OPT_BOOL('m', "merge", &opts->merge, N_("perform a 3-way merge with the new branch")),
  OPT_STRING(0, "conflict", &opts->conflict_style, N_("style"),
      N_("conflict style (merge or diff3)")),
  OPT_END()
 };
 struct option *newopts = parse_options_concat(prevopts, options);
 free(prevopts);
 return newopts;
}
