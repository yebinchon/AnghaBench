
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct status_cb {char const* prefix; int flags; } ;
struct pathspec {int dummy; } ;
struct option {int dummy; } ;
struct module_list {int dummy; } ;


 struct module_list MODULE_LIST_INIT ;
 char const* N_ (char*) ;
 struct option OPT_BIT (int ,char*,int *,char const*,int ) ;
 int OPT_CACHED ;
 struct option OPT_END () ;
 int OPT_QUIET ;
 int OPT_RECURSIVE ;
 struct option OPT__QUIET (int*,char const*) ;
 struct status_cb STATUS_CB_INIT ;
 int for_each_listed_submodule (struct module_list*,int ,struct status_cb*) ;
 scalar_t__ module_list_compute (int,char const**,char const*,struct pathspec*,struct module_list*) ;
 int parse_options (int,char const**,char const*,struct option*,char const* const*,int ) ;
 int status_submodule_cb ;

__attribute__((used)) static int module_status(int argc, const char **argv, const char *prefix)
{
 struct status_cb info = STATUS_CB_INIT;
 struct pathspec pathspec;
 struct module_list list = MODULE_LIST_INIT;
 int quiet = 0;

 struct option module_status_options[] = {
  OPT__QUIET(&quiet, N_("Suppress submodule status output")),
  OPT_BIT(0, "cached", &info.flags, N_("Use commit stored in the index instead of the one stored in the submodule HEAD"), OPT_CACHED),
  OPT_BIT(0, "recursive", &info.flags, N_("recurse into nested submodules"), OPT_RECURSIVE),
  OPT_END()
 };

 const char *const git_submodule_helper_usage[] = {
  N_("git submodule status [--quiet] [--cached] [--recursive] [<path>...]"),
  ((void*)0)
 };

 argc = parse_options(argc, argv, prefix, module_status_options,
        git_submodule_helper_usage, 0);

 if (module_list_compute(argc, argv, prefix, &pathspec, &list) < 0)
  return 1;

 info.prefix = prefix;
 if (quiet)
  info.flags |= OPT_QUIET;

 for_each_listed_submodule(&list, status_submodule_cb, &info);

 return 0;
}
