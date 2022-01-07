
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int GPG_VERIFY_RAW ;
 unsigned int GPG_VERIFY_VERBOSE ;
 int N_ (char*) ;
 struct option const OPT_BIT (int ,char*,unsigned int*,int ,int ) ;
 struct option const OPT_END () ;
 struct option const OPT__VERBOSE (int*,int ) ;
 int PARSE_OPT_KEEP_ARGV0 ;
 int SIGPIPE ;
 int SIG_IGN ;
 int git_config (int ,int *) ;
 int git_verify_commit_config ;
 int parse_options (int,char const**,char const*,struct option const*,int ,int ) ;
 int signal (int ,int ) ;
 int usage_with_options (int ,struct option const*) ;
 scalar_t__ verify_commit (char const*,unsigned int) ;
 int verify_commit_usage ;

int cmd_verify_commit(int argc, const char **argv, const char *prefix)
{
 int i = 1, verbose = 0, had_error = 0;
 unsigned flags = 0;
 const struct option verify_commit_options[] = {
  OPT__VERBOSE(&verbose, N_("print commit contents")),
  OPT_BIT(0, "raw", &flags, N_("print raw gpg status output"), GPG_VERIFY_RAW),
  OPT_END()
 };

 git_config(git_verify_commit_config, ((void*)0));

 argc = parse_options(argc, argv, prefix, verify_commit_options,
        verify_commit_usage, PARSE_OPT_KEEP_ARGV0);
 if (argc <= i)
  usage_with_options(verify_commit_usage, verify_commit_options);

 if (verbose)
  flags |= GPG_VERIFY_VERBOSE;



 signal(SIGPIPE, SIG_IGN);
 while (i < argc)
  if (verify_commit(argv[i++], flags))
   had_error = 1;
 return had_error;
}
