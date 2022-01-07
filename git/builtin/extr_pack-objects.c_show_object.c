
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_entry {int dummy; } ;
struct object {int oid; int flags; int type; } ;


 int OBJECT_ADDED ;
 int add_object_entry (int *,int ,char const*,int ) ;
 int add_preferred_base_object (char const*) ;
 int oe_set_tree_depth (int *,struct object_entry*,unsigned int) ;
 unsigned int oe_tree_depth (int *,struct object_entry*) ;
 struct object_entry* packlist_find (int *,int *) ;
 char* strchr (char const*,char) ;
 int to_pack ;
 scalar_t__ use_delta_islands ;

__attribute__((used)) static void show_object(struct object *obj, const char *name, void *data)
{
 add_preferred_base_object(name);
 add_object_entry(&obj->oid, obj->type, name, 0);
 obj->flags |= OBJECT_ADDED;

 if (use_delta_islands) {
  const char *p;
  unsigned depth;
  struct object_entry *ent;


  depth = *name ? 1 : 0;
  for (p = strchr(name, '/'); p; p = strchr(p + 1, '/'))
   depth++;

  ent = packlist_find(&to_pack, &obj->oid);
  if (ent && depth > oe_tree_depth(&to_pack, ent))
   oe_set_tree_depth(&to_pack, ent, depth);
 }
}
