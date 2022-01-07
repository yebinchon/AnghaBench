
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int dummy; } ;
struct object {scalar_t__ type; } ;


 scalar_t__ OBJ_TREE ;
 int free_tree_buffer (struct tree*) ;
 int fsck_walk (struct object*,struct object*,int *) ;
 int fsck_walk_options ;

__attribute__((used)) static int traverse_one_object(struct object *obj)
{
 int result = fsck_walk(obj, obj, &fsck_walk_options);

 if (obj->type == OBJ_TREE) {
  struct tree *tree = (struct tree *)obj;
  free_tree_buffer(tree);
 }
 return result;
}
