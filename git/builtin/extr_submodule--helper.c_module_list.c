
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pathspec {int dummy; } ;
struct option {int dummy; } ;
struct module_list {int nr; struct cache_entry** entries; } ;
struct cache_entry {int ce_mode; char* name; int oid; } ;


 struct module_list MODULE_LIST_INIT ;
 char const* N_ (char*) ;
 struct option OPT_END () ;
 struct option OPT_STRING (int ,char*,char const**,char const*,char const*) ;
 int ce_stage (struct cache_entry const*) ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ module_list_compute (int,char const**,char const*,struct pathspec*,struct module_list*) ;
 int null_oid ;
 char* oid_to_hex (int *) ;
 int parse_options (int,char const**,char const*,struct option*,char const* const*,int ) ;
 int printf (char*,int,char*,...) ;
 int stdout ;

__attribute__((used)) static int module_list(int argc, const char **argv, const char *prefix)
{
 int i;
 struct pathspec pathspec;
 struct module_list list = MODULE_LIST_INIT;

 struct option module_list_options[] = {
  OPT_STRING(0, "prefix", &prefix,
      N_("path"),
      N_("alternative anchor for relative paths")),
  OPT_END()
 };

 const char *const git_submodule_helper_usage[] = {
  N_("git submodule--helper list [--prefix=<path>] [<path>...]"),
  ((void*)0)
 };

 argc = parse_options(argc, argv, prefix, module_list_options,
        git_submodule_helper_usage, 0);

 if (module_list_compute(argc, argv, prefix, &pathspec, &list) < 0)
  return 1;

 for (i = 0; i < list.nr; i++) {
  const struct cache_entry *ce = list.entries[i];

  if (ce_stage(ce))
   printf("%06o %s U\t", ce->ce_mode, oid_to_hex(&null_oid));
  else
   printf("%06o %s %d\t", ce->ce_mode,
          oid_to_hex(&ce->oid), ce_stage(ce));

  fprintf(stdout, "%s\n", ce->name);
 }
 return 0;
}
