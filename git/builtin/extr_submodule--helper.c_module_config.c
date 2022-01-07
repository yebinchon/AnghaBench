
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 char const* N_ (char*) ;
 struct option OPT_CMDMODE (int ,char*,int*,char const*,int) ;
 struct option OPT_END () ;
 int PARSE_OPT_KEEP_ARGV0 ;
 int _ (char*) ;
 int config_set_in_gitmodules_file_gently (char const*,char const*) ;
 int die (int ) ;
 scalar_t__ is_writing_gitmodules_ok () ;
 int parse_options (int,char const**,char const*,struct option*,char const* const*,int ) ;
 int print_config_from_gitmodules (int ,char const*) ;
 int the_repository ;
 int usage_with_options (char const* const*,struct option*) ;

__attribute__((used)) static int module_config(int argc, const char **argv, const char *prefix)
{
 enum {
  CHECK_WRITEABLE = 1,
  DO_UNSET = 2
 } command = 0;

 struct option module_config_options[] = {
  OPT_CMDMODE(0, "check-writeable", &command,
       N_("check if it is safe to write to the .gitmodules file"),
       CHECK_WRITEABLE),
  OPT_CMDMODE(0, "unset", &command,
       N_("unset the config in the .gitmodules file"),
       DO_UNSET),
  OPT_END()
 };
 const char *const git_submodule_helper_usage[] = {
  N_("git submodule--helper config <name> [<value>]"),
  N_("git submodule--helper config --unset <name>"),
  N_("git submodule--helper config --check-writeable"),
  ((void*)0)
 };

 argc = parse_options(argc, argv, prefix, module_config_options,
        git_submodule_helper_usage, PARSE_OPT_KEEP_ARGV0);

 if (argc == 1 && command == CHECK_WRITEABLE)
  return is_writing_gitmodules_ok() ? 0 : -1;


 if (argc == 2 && command != DO_UNSET)
  return print_config_from_gitmodules(the_repository, argv[1]);


 if (argc == 3 || (argc == 2 && command == DO_UNSET)) {
  const char *value = (argc == 3) ? argv[2] : ((void*)0);

  if (!is_writing_gitmodules_ok())
   die(_("please make sure that the .gitmodules file is in the working tree"));

  return config_set_in_gitmodules_file_gently(argv[1], value);
 }

 usage_with_options(git_submodule_helper_usage, module_config_options);
}
