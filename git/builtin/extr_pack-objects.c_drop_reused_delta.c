
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct object_info {unsigned long* sizep; int* typep; } ;
struct TYPE_3__ {int oid; } ;
struct object_entry {int delta_idx; unsigned int delta_child_idx; unsigned int delta_sibling_idx; TYPE_1__ idx; int in_pack_offset; scalar_t__ depth; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_4__ {struct object_entry* objects; } ;


 int IN_PACK (struct object_entry*) ;
 struct object_info OBJECT_INFO_INIT ;
 int SET_DELTA (struct object_entry*,int *) ;
 int SET_SIZE (struct object_entry*,unsigned long) ;
 int oe_set_type (struct object_entry*,int) ;
 int oid_object_info (int ,int *,unsigned long*) ;
 scalar_t__ packed_object_info (int ,int ,int ,struct object_info*) ;
 int the_repository ;
 TYPE_2__ to_pack ;

__attribute__((used)) static void drop_reused_delta(struct object_entry *entry)
{
 unsigned *idx = &to_pack.objects[entry->delta_idx - 1].delta_child_idx;
 struct object_info oi = OBJECT_INFO_INIT;
 enum object_type type;
 unsigned long size;

 while (*idx) {
  struct object_entry *oe = &to_pack.objects[*idx - 1];

  if (oe == entry)
   *idx = oe->delta_sibling_idx;
  else
   idx = &oe->delta_sibling_idx;
 }
 SET_DELTA(entry, ((void*)0));
 entry->depth = 0;

 oi.sizep = &size;
 oi.typep = &type;
 if (packed_object_info(the_repository, IN_PACK(entry), entry->in_pack_offset, &oi) < 0) {






  oe_set_type(entry,
       oid_object_info(the_repository, &entry->idx.oid, &size));
 } else {
  oe_set_type(entry, type);
 }
 SET_SIZE(entry, size);
}
