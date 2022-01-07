
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;
struct argv_array {int argc; int * argv; } ;


 struct argv_array ARGV_ARRAY_INIT ;
 int N_ (char*) ;
 struct option OPT_BOOL (char,char*,int*,int ) ;
 struct option OPT_END () ;
 int PARSE_OPT_KEEP_ARGV0 ;
 int RUN_GIT_CMD ;
 int argv_array_clear (struct argv_array*) ;
 int argv_array_pop (struct argv_array*) ;
 int argv_array_push (struct argv_array*,char const*) ;
 int builtin_remote_update_usage ;
 int get_remote_default ;
 int git_config (int ,int*) ;
 int parse_options (int,char const**,int *,struct option*,int ,int ) ;
 int run_command_v_opt (int *,int ) ;
 scalar_t__ strcmp (int ,char*) ;
 scalar_t__ verbose ;

__attribute__((used)) static int update(int argc, const char **argv)
{
 int i, prune = -1;
 struct option options[] = {
  OPT_BOOL('p', "prune", &prune,
    N_("prune remotes after fetching")),
  OPT_END()
 };
 struct argv_array fetch_argv = ARGV_ARRAY_INIT;
 int default_defined = 0;
 int retval;

 argc = parse_options(argc, argv, ((void*)0), options, builtin_remote_update_usage,
        PARSE_OPT_KEEP_ARGV0);

 argv_array_push(&fetch_argv, "fetch");

 if (prune != -1)
  argv_array_push(&fetch_argv, prune ? "--prune" : "--no-prune");
 if (verbose)
  argv_array_push(&fetch_argv, "-v");
 argv_array_push(&fetch_argv, "--multiple");
 if (argc < 2)
  argv_array_push(&fetch_argv, "default");
 for (i = 1; i < argc; i++)
  argv_array_push(&fetch_argv, argv[i]);

 if (strcmp(fetch_argv.argv[fetch_argv.argc-1], "default") == 0) {
  git_config(get_remote_default, &default_defined);
  if (!default_defined) {
   argv_array_pop(&fetch_argv);
   argv_array_push(&fetch_argv, "--all");
  }
 }

 retval = run_command_v_opt(fetch_argv.argv, RUN_GIT_CMD);
 argv_array_clear(&fetch_argv);
 return retval;
}
