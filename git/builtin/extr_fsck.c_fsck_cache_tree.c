
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct object {scalar_t__ type; int flags; } ;
struct cache_tree {scalar_t__ entry_count; int subtree_nr; TYPE_1__** down; int oid; } ;
struct TYPE_4__ {int object_names; } ;
struct TYPE_3__ {struct cache_tree* cache_tree; } ;


 int ERROR_REFS ;
 scalar_t__ OBJ_TREE ;
 int USED ;
 int _ (char*) ;
 int add_decoration (int ,struct object*,int ) ;
 int error (int ,int ) ;
 int errors_found ;
 int fprintf_ln (int ,int ) ;
 TYPE_2__ fsck_walk_options ;
 int mark_object_reachable (struct object*) ;
 scalar_t__ name_objects ;
 int objerror (struct object*,int ) ;
 int oid_to_hex (int *) ;
 struct object* parse_object (int ,int *) ;
 int stderr ;
 int the_repository ;
 scalar_t__ verbose ;
 int xstrdup (char*) ;

__attribute__((used)) static int fsck_cache_tree(struct cache_tree *it)
{
 int i;
 int err = 0;

 if (verbose)
  fprintf_ln(stderr, _("Checking cache tree"));

 if (0 <= it->entry_count) {
  struct object *obj = parse_object(the_repository, &it->oid);
  if (!obj) {
   error(_("%s: invalid sha1 pointer in cache-tree"),
         oid_to_hex(&it->oid));
   errors_found |= ERROR_REFS;
   return 1;
  }
  obj->flags |= USED;
  if (name_objects)
   add_decoration(fsck_walk_options.object_names,
    obj, xstrdup(":"));
  mark_object_reachable(obj);
  if (obj->type != OBJ_TREE)
   err |= objerror(obj, _("non-tree in cache-tree"));
 }
 for (i = 0; i < it->subtree_nr; i++)
  err |= fsck_cache_tree(it->down[i]->cache_tree);
 return err;
}
