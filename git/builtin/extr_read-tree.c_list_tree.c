
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int dummy; } ;
struct object_id {int dummy; } ;


 scalar_t__ MAX_UNPACK_TREES ;
 int die (char*,scalar_t__) ;
 scalar_t__ nr_trees ;
 struct tree* parse_tree_indirect (struct object_id*) ;
 struct tree** trees ;

__attribute__((used)) static int list_tree(struct object_id *oid)
{
 struct tree *tree;

 if (nr_trees >= MAX_UNPACK_TREES)
  die("I cannot read more than %d trees", MAX_UNPACK_TREES);
 tree = parse_tree_indirect(oid);
 if (!tree)
  return -1;
 trees[nr_trees++] = tree;
 return 0;
}
