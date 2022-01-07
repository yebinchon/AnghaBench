
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_buffer_object {TYPE_1__* vm_node; } ;
struct TYPE_2__ {scalar_t__ start; } ;



int
ttm_bo_cmp_rb_tree_items(struct ttm_buffer_object *a,
    struct ttm_buffer_object *b)
{

 if (a->vm_node->start < b->vm_node->start) {
  return (-1);
 } else if (a->vm_node->start > b->vm_node->start) {
  return (1);
 } else {
  return (0);
 }
}
