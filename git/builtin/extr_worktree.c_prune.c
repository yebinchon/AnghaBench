
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int N_ (char*) ;
 struct option OPT_END () ;
 struct option OPT_EXPIRY_DATE (int ,char*,int *,int ) ;
 struct option OPT__DRY_RUN (int *,int ) ;
 struct option OPT__VERBOSE (int *,int ) ;
 int TIME_MAX ;
 int expire ;
 int parse_options (int,char const**,char const*,struct option*,int ,int ) ;
 int prune_worktrees () ;
 int show_only ;
 int usage_with_options (int ,struct option*) ;
 int verbose ;
 int worktree_usage ;

__attribute__((used)) static int prune(int ac, const char **av, const char *prefix)
{
 struct option options[] = {
  OPT__DRY_RUN(&show_only, N_("do not remove, show only")),
  OPT__VERBOSE(&verbose, N_("report pruned working trees")),
  OPT_EXPIRY_DATE(0, "expire", &expire,
    N_("expire working trees older than <time>")),
  OPT_END()
 };

 expire = TIME_MAX;
 ac = parse_options(ac, av, prefix, options, worktree_usage, 0);
 if (ac)
  usage_with_options(worktree_usage, options);
 prune_worktrees();
 return 0;
}
