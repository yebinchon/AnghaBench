
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_entry {int dummy; } ;


 struct object_entry* DELTA (struct object_entry*) ;
 int add_descendants_to_write_order (struct object_entry**,unsigned int*,struct object_entry*) ;

__attribute__((used)) static void add_family_to_write_order(struct object_entry **wo,
          unsigned int *endp,
          struct object_entry *e)
{
 struct object_entry *root;

 for (root = e; DELTA(root); root = DELTA(root))
  ;
 add_descendants_to_write_order(wo, endp, root);
}
