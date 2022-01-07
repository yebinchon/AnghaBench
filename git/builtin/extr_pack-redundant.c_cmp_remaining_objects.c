
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pack_list {scalar_t__ all_objects_size; TYPE_1__* remaining_objects; } ;
struct TYPE_2__ {scalar_t__ size; } ;



__attribute__((used)) static int cmp_remaining_objects(const void *a, const void *b)
{
 struct pack_list *pl_a = *((struct pack_list **)a);
 struct pack_list *pl_b = *((struct pack_list **)b);

 if (pl_a->remaining_objects->size == pl_b->remaining_objects->size) {

  if (pl_a->all_objects_size == pl_b->all_objects_size)
   return 0;
  else if (pl_a->all_objects_size < pl_b->all_objects_size)
   return 1;
  else
   return -1;
 } else if (pl_a->remaining_objects->size < pl_b->remaining_objects->size) {

  return 1;
 } else {
  return -1;
 }
}
