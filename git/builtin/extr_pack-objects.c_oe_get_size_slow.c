
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct packing_data {int dummy; } ;
struct packed_git {int dummy; } ;
struct pack_window {int dummy; } ;
struct TYPE_2__ {int oid; } ;
struct object_entry {scalar_t__ type_; TYPE_1__ idx; int in_pack_offset; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int BUG (char*) ;
 scalar_t__ OBJ_OFS_DELTA ;
 scalar_t__ OBJ_REF_DELTA ;
 int _ (char*) ;
 int die (int ,int ) ;
 struct packed_git* oe_in_pack (struct packing_data*,struct object_entry const*) ;
 scalar_t__ oid_object_info (int ,int *,unsigned long*) ;
 int oid_to_hex (int *) ;
 int packing_data_lock (int *) ;
 int packing_data_unlock (int *) ;
 int the_repository ;
 int to_pack ;
 unsigned long unpack_object_header_buffer (unsigned char*,unsigned long,int*,unsigned long*) ;
 int unuse_pack (struct pack_window**) ;
 unsigned char* use_pack (struct packed_git*,struct pack_window**,int ,unsigned long*) ;

unsigned long oe_get_size_slow(struct packing_data *pack,
          const struct object_entry *e)
{
 struct packed_git *p;
 struct pack_window *w_curs;
 unsigned char *buf;
 enum object_type type;
 unsigned long used, avail, size;

 if (e->type_ != OBJ_OFS_DELTA && e->type_ != OBJ_REF_DELTA) {
  packing_data_lock(&to_pack);
  if (oid_object_info(the_repository, &e->idx.oid, &size) < 0)
   die(_("unable to get size of %s"),
       oid_to_hex(&e->idx.oid));
  packing_data_unlock(&to_pack);
  return size;
 }

 p = oe_in_pack(pack, e);
 if (!p)
  BUG("when e->type is a delta, it must belong to a pack");

 packing_data_lock(&to_pack);
 w_curs = ((void*)0);
 buf = use_pack(p, &w_curs, e->in_pack_offset, &avail);
 used = unpack_object_header_buffer(buf, avail, &type, &size);
 if (used == 0)
  die(_("unable to parse object header of %s"),
      oid_to_hex(&e->idx.oid));

 unuse_pack(&w_curs);
 packing_data_unlock(&to_pack);
 return size;
}
