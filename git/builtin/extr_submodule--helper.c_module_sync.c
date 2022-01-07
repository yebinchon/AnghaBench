
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sync_cb {char const* prefix; int flags; } ;
struct pathspec {int dummy; } ;
struct option {int dummy; } ;
struct module_list {int dummy; } ;


 struct module_list MODULE_LIST_INIT ;
 char const* N_ (char*) ;
 struct option OPT_BOOL (int ,char*,int*,char const*) ;
 struct option OPT_END () ;
 int OPT_QUIET ;
 int OPT_RECURSIVE ;
 struct option OPT__QUIET (int*,char const*) ;
 struct sync_cb SYNC_CB_INIT ;
 int for_each_listed_submodule (struct module_list*,int ,struct sync_cb*) ;
 scalar_t__ module_list_compute (int,char const**,char const*,struct pathspec*,struct module_list*) ;
 int parse_options (int,char const**,char const*,struct option*,char const* const*,int ) ;
 int sync_submodule_cb ;

__attribute__((used)) static int module_sync(int argc, const char **argv, const char *prefix)
{
 struct sync_cb info = SYNC_CB_INIT;
 struct pathspec pathspec;
 struct module_list list = MODULE_LIST_INIT;
 int quiet = 0;
 int recursive = 0;

 struct option module_sync_options[] = {
  OPT__QUIET(&quiet, N_("Suppress output of synchronizing submodule url")),
  OPT_BOOL(0, "recursive", &recursive,
   N_("Recurse into nested submodules")),
  OPT_END()
 };

 const char *const git_submodule_helper_usage[] = {
  N_("git submodule--helper sync [--quiet] [--recursive] [<path>]"),
  ((void*)0)
 };

 argc = parse_options(argc, argv, prefix, module_sync_options,
        git_submodule_helper_usage, 0);

 if (module_list_compute(argc, argv, prefix, &pathspec, &list) < 0)
  return 1;

 info.prefix = prefix;
 if (quiet)
  info.flags |= OPT_QUIET;
 if (recursive)
  info.flags |= OPT_RECURSIVE;

 for_each_listed_submodule(&list, sync_submodule_cb, &info);

 return 0;
}
