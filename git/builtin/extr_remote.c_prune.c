
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int N_ (char*) ;
 struct option OPT_END () ;
 struct option OPT__DRY_RUN (int*,int ) ;
 int builtin_remote_prune_usage ;
 int parse_options (int,char const**,int *,struct option*,int ,int ) ;
 int prune_remote (char const*,int) ;
 int usage_with_options (int ,struct option*) ;

__attribute__((used)) static int prune(int argc, const char **argv)
{
 int dry_run = 0, result = 0;
 struct option options[] = {
  OPT__DRY_RUN(&dry_run, N_("dry run")),
  OPT_END()
 };

 argc = parse_options(argc, argv, ((void*)0), options, builtin_remote_prune_usage,
        0);

 if (argc < 1)
  usage_with_options(builtin_remote_prune_usage, options);

 for (; argc; argc--, argv++)
  result |= prune_remote(*argv, dry_run);

 return result;
}
