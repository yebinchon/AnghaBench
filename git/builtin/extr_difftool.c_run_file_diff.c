
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv_array {int argv; } ;


 struct argv_array ARGV_ARRAY_INIT ;
 int RUN_GIT_CMD ;
 int argv_array_push (struct argv_array*,char const*) ;
 int exit (int) ;
 int run_command_v_opt_cd_env (int ,int ,char const*,char const**) ;

__attribute__((used)) static int run_file_diff(int prompt, const char *prefix,
    int argc, const char **argv)
{
 struct argv_array args = ARGV_ARRAY_INIT;
 const char *env[] = {
  "GIT_PAGER=", "GIT_EXTERNAL_DIFF=git-difftool--helper", ((void*)0),
  ((void*)0)
 };
 int ret = 0, i;

 if (prompt > 0)
  env[2] = "GIT_DIFFTOOL_PROMPT=true";
 else if (!prompt)
  env[2] = "GIT_DIFFTOOL_NO_PROMPT=true";


 argv_array_push(&args, "diff");
 for (i = 0; i < argc; i++)
  argv_array_push(&args, argv[i]);
 ret = run_command_v_opt_cd_env(args.argv, RUN_GIT_CMD, prefix, env);
 exit(ret);
}
