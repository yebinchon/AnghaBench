
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* member_2; int* member_3; int member_6; int member_8; int * member_7; int member_5; int * member_4; int member_1; int member_0; } ;
struct object_id {int dummy; } ;


 int N_ (char*) ;
 int OPTION_BIT ;
 struct option OPT_BIT (int ,char*,int*,int ,int ) ;
 struct option OPT_END () ;
 struct option OPT_STRING (int ,char*,char const**,int ,int ) ;
 int PARSE_OPT_HIDDEN ;
 int PARSE_OPT_NOARG ;
 int WRITE_TREE_IGNORE_CACHE_TREE ;
 int WRITE_TREE_MISSING_OK ;



 int die (char*,char const*,...) ;
 int git_config (int ,int *) ;
 int git_default_config ;
 char* oid_to_hex (struct object_id*) ;
 int parse_options (int,char const**,char const*,struct option*,int ,int ) ;
 int printf (char*,char*) ;
 int write_cache_as_tree (struct object_id*,int,char const*) ;
 int write_tree_usage ;

int cmd_write_tree(int argc, const char **argv, const char *cmd_prefix)
{
 int flags = 0, ret;
 const char *tree_prefix = ((void*)0);
 struct object_id oid;
 const char *me = "git-write-tree";
 struct option write_tree_options[] = {
  OPT_BIT(0, "missing-ok", &flags, N_("allow missing objects"),
   WRITE_TREE_MISSING_OK),
  OPT_STRING(0, "prefix", &tree_prefix, N_("<prefix>/"),
      N_("write tree object for a subdirectory <prefix>")),
  { OPTION_BIT, 0, "ignore-cache-tree", &flags, ((void*)0),
    N_("only useful for debugging"),
    PARSE_OPT_HIDDEN | PARSE_OPT_NOARG, ((void*)0),
    WRITE_TREE_IGNORE_CACHE_TREE },
  OPT_END()
 };

 git_config(git_default_config, ((void*)0));
 argc = parse_options(argc, argv, cmd_prefix, write_tree_options,
        write_tree_usage, 0);

 ret = write_cache_as_tree(&oid, flags, tree_prefix);
 switch (ret) {
 case 0:
  printf("%s\n", oid_to_hex(&oid));
  break;
 case 128:
  die("%s: error reading the index", me);
  break;
 case 129:
  die("%s: error building trees", me);
  break;
 case 130:
  die("%s: prefix %s not found", me, tree_prefix);
  break;
 }
 return ret;
}
