
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int N_ (char*) ;
 struct option OPT_BIT (int ,char*,unsigned int*,int ,unsigned int) ;
 struct option OPT_END () ;
 unsigned int PACK_REFS_ALL ;
 unsigned int PACK_REFS_PRUNE ;
 int get_main_ref_store (int ) ;
 int git_config (int ,int *) ;
 int git_default_config ;
 int pack_refs_usage ;
 scalar_t__ parse_options (int,char const**,char const*,struct option*,int ,int ) ;
 int refs_pack_refs (int ,unsigned int) ;
 int the_repository ;
 int usage_with_options (int ,struct option*) ;

int cmd_pack_refs(int argc, const char **argv, const char *prefix)
{
 unsigned int flags = PACK_REFS_PRUNE;
 struct option opts[] = {
  OPT_BIT(0, "all", &flags, N_("pack everything"), PACK_REFS_ALL),
  OPT_BIT(0, "prune", &flags, N_("prune loose refs (default)"), PACK_REFS_PRUNE),
  OPT_END(),
 };
 git_config(git_default_config, ((void*)0));
 if (parse_options(argc, argv, prefix, opts, pack_refs_usage, 0))
  usage_with_options(pack_refs_usage, opts);
 return refs_pack_refs(get_main_ref_store(the_repository), flags);
}
