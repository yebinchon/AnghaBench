
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct object_entry {scalar_t__ real_type; } ;
struct base_data {int ref_last; int ofs_last; size_t ref_first; size_t ofs_first; TYPE_2__* obj; int data; } ;
struct TYPE_8__ {int obj_no; } ;
struct TYPE_7__ {int obj_no; } ;
struct TYPE_5__ {int offset; int oid; } ;
struct TYPE_6__ {scalar_t__ real_type; TYPE_1__ idx; } ;


 int BUG (char*) ;
 scalar_t__ OBJ_OFS_DELTA ;
 int OBJ_REF_DELTA ;
 struct base_data* alloc_base_data () ;
 int assert (int) ;
 int compare_and_swap_type (scalar_t__*,int ,scalar_t__) ;
 int find_ofs_delta_children (int ,size_t*,int*,scalar_t__) ;
 int find_ref_delta_children (int *,size_t*,int*,int ) ;
 int free (int ) ;
 int free_base_data (struct base_data*) ;
 int link_base_data (struct base_data*,struct base_data*) ;
 struct object_entry* objects ;
 TYPE_4__* ofs_deltas ;
 TYPE_3__* ref_deltas ;
 int resolve_delta (struct object_entry*,struct base_data*,struct base_data*) ;
 int unlink_base_data (struct base_data*) ;

__attribute__((used)) static struct base_data *find_unresolved_deltas_1(struct base_data *base,
        struct base_data *prev_base)
{
 if (base->ref_last == -1 && base->ofs_last == -1) {
  find_ref_delta_children(&base->obj->idx.oid,
     &base->ref_first, &base->ref_last,
     OBJ_REF_DELTA);

  find_ofs_delta_children(base->obj->idx.offset,
     &base->ofs_first, &base->ofs_last,
     OBJ_OFS_DELTA);

  if (base->ref_last == -1 && base->ofs_last == -1) {
   free(base->data);
   return ((void*)0);
  }

  link_base_data(prev_base, base);
 }

 if (base->ref_first <= base->ref_last) {
  struct object_entry *child = objects + ref_deltas[base->ref_first].obj_no;
  struct base_data *result = alloc_base_data();

  if (!compare_and_swap_type(&child->real_type, OBJ_REF_DELTA,
        base->obj->real_type))
   BUG("child->real_type != OBJ_REF_DELTA");

  resolve_delta(child, base, result);
  if (base->ref_first == base->ref_last && base->ofs_last == -1)
   free_base_data(base);

  base->ref_first++;
  return result;
 }

 if (base->ofs_first <= base->ofs_last) {
  struct object_entry *child = objects + ofs_deltas[base->ofs_first].obj_no;
  struct base_data *result = alloc_base_data();

  assert(child->real_type == OBJ_OFS_DELTA);
  child->real_type = base->obj->real_type;
  resolve_delta(child, base, result);
  if (base->ofs_first == base->ofs_last)
   free_base_data(base);

  base->ofs_first++;
  return result;
 }

 unlink_base_data(base);
 return ((void*)0);
}
