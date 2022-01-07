
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tree {int dummy; } ;
struct option {int dummy; } ;
struct object_id {int dummy; } ;
struct TYPE_6__ {int nr; scalar_t__ has_wildcard; TYPE_1__* items; } ;
struct TYPE_5__ {int len; int nowildcard_len; } ;


 int LS_NAME_ONLY ;
 int LS_RECURSIVE ;
 int LS_SHOW_SIZE ;
 int LS_SHOW_TREES ;
 int LS_TREE_ONLY ;
 int N_ (char*) ;
 struct option const OPT_BIT (char,char*,int*,int ,int) ;
 struct option const OPT_BOOL (int ,char*,int*,int ) ;
 struct option const OPT_END () ;
 struct option const OPT_SET_INT (char,char*,scalar_t__*,int ,int ) ;
 struct option const OPT__ABBREV (int *) ;
 int PATHSPEC_ALL_MAGIC ;
 int PATHSPEC_FROMTOP ;
 int PATHSPEC_LITERAL ;
 int PATHSPEC_PREFER_CWD ;
 int abbrev ;
 scalar_t__ chomp_prefix ;
 int die (char*,...) ;
 scalar_t__ get_oid (char const*,struct object_id*) ;
 int git_config (int ,int *) ;
 int git_default_config ;
 scalar_t__ line_termination ;
 int ls_options ;
 char const* ls_tree_prefix ;
 int ls_tree_usage ;
 int parse_options (int,char const**,char const*,struct option const*,int ,int ) ;
 int parse_pathspec (TYPE_2__*,int,int ,char const*,char const**) ;
 struct tree* parse_tree_indirect (struct object_id*) ;
 TYPE_2__ pathspec ;
 int read_tree_recursive (int ,struct tree*,char*,int ,int ,TYPE_2__*,int ,int *) ;
 int show_tree ;
 scalar_t__ strlen (char const*) ;
 int the_repository ;
 int usage_with_options (int ,struct option const*) ;

int cmd_ls_tree(int argc, const char **argv, const char *prefix)
{
 struct object_id oid;
 struct tree *tree;
 int i, full_tree = 0;
 const struct option ls_tree_options[] = {
  OPT_BIT('d', ((void*)0), &ls_options, N_("only show trees"),
   LS_TREE_ONLY),
  OPT_BIT('r', ((void*)0), &ls_options, N_("recurse into subtrees"),
   LS_RECURSIVE),
  OPT_BIT('t', ((void*)0), &ls_options, N_("show trees when recursing"),
   LS_SHOW_TREES),
  OPT_SET_INT('z', ((void*)0), &line_termination,
       N_("terminate entries with NUL byte"), 0),
  OPT_BIT('l', "long", &ls_options, N_("include object size"),
   LS_SHOW_SIZE),
  OPT_BIT(0, "name-only", &ls_options, N_("list only filenames"),
   LS_NAME_ONLY),
  OPT_BIT(0, "name-status", &ls_options, N_("list only filenames"),
   LS_NAME_ONLY),
  OPT_SET_INT(0, "full-name", &chomp_prefix,
       N_("use full path names"), 0),
  OPT_BOOL(0, "full-tree", &full_tree,
    N_("list entire tree; not just current directory "
       "(implies --full-name)")),
  OPT__ABBREV(&abbrev),
  OPT_END()
 };

 git_config(git_default_config, ((void*)0));
 ls_tree_prefix = prefix;
 if (prefix && *prefix)
  chomp_prefix = strlen(prefix);

 argc = parse_options(argc, argv, prefix, ls_tree_options,
        ls_tree_usage, 0);
 if (full_tree) {
  ls_tree_prefix = prefix = ((void*)0);
  chomp_prefix = 0;
 }

 if ( (LS_TREE_ONLY|LS_RECURSIVE) ==
     ((LS_TREE_ONLY|LS_RECURSIVE) & ls_options))
  ls_options |= LS_SHOW_TREES;

 if (argc < 1)
  usage_with_options(ls_tree_usage, ls_tree_options);
 if (get_oid(argv[0], &oid))
  die("Not a valid object name %s", argv[0]);







 parse_pathspec(&pathspec, PATHSPEC_ALL_MAGIC &
      ~(PATHSPEC_FROMTOP | PATHSPEC_LITERAL),
         PATHSPEC_PREFER_CWD,
         prefix, argv + 1);
 for (i = 0; i < pathspec.nr; i++)
  pathspec.items[i].nowildcard_len = pathspec.items[i].len;
 pathspec.has_wildcard = 0;
 tree = parse_tree_indirect(&oid);
 if (!tree)
  die("not a tree object");
 return !!read_tree_recursive(the_repository, tree, "", 0, 0,
         &pathspec, show_tree, ((void*)0));
}
