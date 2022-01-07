
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int _ (char*) ;
 int die (int ) ;
 scalar_t__ write_cache_as_tree (struct object_id*,int ,int *) ;

__attribute__((used)) static void write_tree_trivial(struct object_id *oid)
{
 if (write_cache_as_tree(oid, 0, ((void*)0)))
  die(_("git write-tree failed to write a tree"));
}
