
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int dummy; } ;
struct pathspec {int dummy; } ;
struct object_id {int dummy; } ;
struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct cache_entry {int ce_flags; int name; } ;
typedef int pathspec ;


 int CE_STAGEMASK ;
 int CE_UPDATE ;
 int PATHSPEC_ALL_MAGIC ;
 int PATHSPEC_PREFER_CWD ;
 int ce_stage (struct cache_entry*) ;
 int die (char*,char const*) ;
 scalar_t__ get_oid (char const*,struct object_id*) ;
 int memset (struct pathspec*,int ,int) ;
 int parse_pathspec (struct pathspec*,int ,int ,char const*,char const**) ;
 struct tree* parse_tree_indirect (struct object_id*) ;
 scalar_t__ read_tree (int ,struct tree*,int,struct pathspec*,struct index_state*) ;
 int strcmp (int ,int ) ;
 int the_repository ;

void overlay_tree_on_index(struct index_state *istate,
      const char *tree_name, const char *prefix)
{
 struct tree *tree;
 struct object_id oid;
 struct pathspec pathspec;
 struct cache_entry *last_stage0 = ((void*)0);
 int i;

 if (get_oid(tree_name, &oid))
  die("tree-ish %s not found.", tree_name);
 tree = parse_tree_indirect(&oid);
 if (!tree)
  die("bad tree-ish %s", tree_name);


 for (i = 0; i < istate->cache_nr; i++) {
  struct cache_entry *ce = istate->cache[i];
  if (!ce_stage(ce))
   continue;
  ce->ce_flags |= CE_STAGEMASK;
 }

 if (prefix) {
  static const char *(matchbuf[1]);
  matchbuf[0] = ((void*)0);
  parse_pathspec(&pathspec, PATHSPEC_ALL_MAGIC,
          PATHSPEC_PREFER_CWD, prefix, matchbuf);
 } else
  memset(&pathspec, 0, sizeof(pathspec));
 if (read_tree(the_repository, tree, 1, &pathspec, istate))
  die("unable to read tree entries %s", tree_name);

 for (i = 0; i < istate->cache_nr; i++) {
  struct cache_entry *ce = istate->cache[i];
  switch (ce_stage(ce)) {
  case 0:
   last_stage0 = ce;

  default:
   continue;
  case 1:





   if (last_stage0 &&
       !strcmp(last_stage0->name, ce->name))
    ce->ce_flags |= CE_UPDATE;
  }
 }
}
