
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int BUG (char*) ;


 int N_ (char*) ;
 struct option OPT_BOOL (int ,char*,int*,int ) ;
 struct option OPT_CALLBACK_F (int ,char*,int*,int ,int ,int ,int ) ;
 struct option OPT_END () ;
 struct option OPT_STRING (int ,char*,char const**,int ,int ) ;
 int PARSE_OPT_KEEP_UNKNOWN ;
 int PARSE_OPT_NONEG ;
 int _ (char*) ;
 int cmdmode ;
 int env__helper_usage ;
 int error (int ,char const*) ;
 int git_env_bool (char const*,int) ;
 unsigned long git_env_ulong (char const*,unsigned long) ;
 int git_parse_maybe_bool (char const*) ;
 int git_parse_ulong (char const*,unsigned long*) ;
 int option_parse_type ;
 int parse_options (int,char const**,char const*,struct option*,int ,int ) ;
 int printf (char*,unsigned long) ;
 int puts (char*) ;
 int usage_with_options (int ,struct option*) ;

int cmd_env__helper(int argc, const char **argv, const char *prefix)
{
 int exit_code = 0;
 const char *env_variable = ((void*)0);
 const char *env_default = ((void*)0);
 int ret;
 int ret_int, default_int;
 unsigned long ret_ulong, default_ulong;
 struct option opts[] = {
  OPT_CALLBACK_F(0, "type", &cmdmode, N_("type"),
          N_("value is given this type"), PARSE_OPT_NONEG,
          option_parse_type),
  OPT_STRING(0, "default", &env_default, N_("value"),
      N_("default for git_env_*(...) to fall back on")),
  OPT_BOOL(0, "exit-code", &exit_code,
    N_("be quiet only use git_env_*() value as exit code")),
  OPT_END(),
 };

 argc = parse_options(argc, argv, prefix, opts, env__helper_usage,
        PARSE_OPT_KEEP_UNKNOWN);
 if (env_default && !*env_default)
  usage_with_options(env__helper_usage, opts);
 if (!cmdmode)
  usage_with_options(env__helper_usage, opts);
 if (argc != 1)
  usage_with_options(env__helper_usage, opts);
 env_variable = argv[0];

 switch (cmdmode) {
 case 129:
  if (env_default) {
   default_int = git_parse_maybe_bool(env_default);
   if (default_int == -1) {
    error(_("option `--default' expects a boolean value with `--type=bool`, not `%s`"),
          env_default);
    usage_with_options(env__helper_usage, opts);
   }
  } else {
   default_int = 0;
  }
  ret_int = git_env_bool(env_variable, default_int);
  if (!exit_code)
   puts(ret_int ? "true" : "false");
  ret = ret_int;
  break;
 case 128:
  if (env_default) {
   if (!git_parse_ulong(env_default, &default_ulong)) {
    error(_("option `--default' expects an unsigned long value with `--type=ulong`, not `%s`"),
          env_default);
    usage_with_options(env__helper_usage, opts);
   }
  } else {
   default_ulong = 0;
  }
  ret_ulong = git_env_ulong(env_variable, default_ulong);
  if (!exit_code)
   printf("%lu\n", ret_ulong);
  ret = ret_ulong;
  break;
 default:
  BUG("unknown <type> value");
  break;
 }

 return !ret;
}
