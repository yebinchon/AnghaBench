
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct object_entry {int filled; scalar_t__ tagged; } ;
struct TYPE_3__ {unsigned int nr_objects; struct object_entry* objects; } ;


 scalar_t__ OBJ_COMMIT ;
 scalar_t__ OBJ_TAG ;
 scalar_t__ OBJ_TREE ;
 int add_family_to_write_order (struct object_entry**,unsigned int*,struct object_entry*) ;
 int add_to_write_order (struct object_entry**,unsigned int*,struct object_entry*) ;
 scalar_t__ oe_layer (TYPE_1__*,struct object_entry*) ;
 scalar_t__ oe_type (struct object_entry*) ;
 TYPE_1__ to_pack ;
 scalar_t__ write_layer ;

__attribute__((used)) static void compute_layer_order(struct object_entry **wo, unsigned int *wo_end)
{
 unsigned int i, last_untagged;
 struct object_entry *objects = to_pack.objects;

 for (i = 0; i < to_pack.nr_objects; i++) {
  if (objects[i].tagged)
   break;
  add_to_write_order(wo, wo_end, &objects[i]);
 }
 last_untagged = i;




 for (; i < to_pack.nr_objects; i++) {
  if (objects[i].tagged)
   add_to_write_order(wo, wo_end, &objects[i]);
 }




 for (i = last_untagged; i < to_pack.nr_objects; i++) {
  if (oe_type(&objects[i]) != OBJ_COMMIT &&
      oe_type(&objects[i]) != OBJ_TAG)
   continue;
  add_to_write_order(wo, wo_end, &objects[i]);
 }




 for (i = last_untagged; i < to_pack.nr_objects; i++) {
  if (oe_type(&objects[i]) != OBJ_TREE)
   continue;
  add_to_write_order(wo, wo_end, &objects[i]);
 }




 for (i = last_untagged; i < to_pack.nr_objects; i++) {
  if (!objects[i].filled && oe_layer(&to_pack, &objects[i]) == write_layer)
   add_family_to_write_order(wo, wo_end, &objects[i]);
 }
}
