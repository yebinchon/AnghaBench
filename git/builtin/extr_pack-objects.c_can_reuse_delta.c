
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct TYPE_2__ {struct object_id oid; } ;
struct object_entry {TYPE_1__ idx; } ;


 int bitmap_git ;
 scalar_t__ bitmap_has_oid_in_uninteresting (int ,struct object_id*) ;
 int in_same_island (struct object_id*,struct object_id*) ;
 int oidread (struct object_id*,unsigned char const*) ;
 struct object_entry* packlist_find (int *,struct object_id*) ;
 scalar_t__ thin ;
 int to_pack ;
 scalar_t__ use_delta_islands ;

__attribute__((used)) static int can_reuse_delta(const unsigned char *base_sha1,
      struct object_entry *delta,
      struct object_entry **base_out)
{
 struct object_entry *base;
 struct object_id base_oid;

 if (!base_sha1)
  return 0;

 oidread(&base_oid, base_sha1);





 base = packlist_find(&to_pack, &base_oid);
 if (base) {
  if (!in_same_island(&delta->idx.oid, &base->idx.oid))
   return 0;
  *base_out = base;
  return 1;
 }






 if (thin && bitmap_has_oid_in_uninteresting(bitmap_git, &base_oid)) {
  if (use_delta_islands) {
   if (!in_same_island(&delta->idx.oid, &base_oid))
    return 0;
  }
  *base_out = ((void*)0);
  return 1;
 }

 return 0;
}
