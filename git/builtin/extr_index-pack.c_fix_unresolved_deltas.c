
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int hash; } ;
struct ref_delta_entry {size_t obj_no; TYPE_1__ oid; } ;
struct oid_array {scalar_t__ nr; int oid; } ;
struct hashfile {int dummy; } ;
struct base_data {int size; int data; int obj; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_8__ {scalar_t__ real_type; } ;


 int ALLOC_ARRAY (struct ref_delta_entry**,int) ;
 int OBJECT_INFO_FOR_PREFETCH ;
 scalar_t__ OBJ_REF_DELTA ;
 struct oid_array OID_ARRAY_INIT ;
 int QSORT (struct ref_delta_entry**,int,int ) ;
 int _ (char*) ;
 struct base_data* alloc_base_data () ;
 int append_obj_to_pack (struct hashfile*,int ,int ,int ,int) ;
 scalar_t__ check_object_signature (TYPE_1__*,int ,int ,int ) ;
 int delta_pos_compare ;
 int die (int ,int ) ;
 int display_progress (int ,int ) ;
 int find_unresolved_deltas (struct base_data*) ;
 int free (struct ref_delta_entry**) ;
 scalar_t__ has_promisor_remote () ;
 int nr_ref_deltas ;
 int nr_resolved_deltas ;
 TYPE_5__* objects ;
 int oid_array_append (struct oid_array*,TYPE_1__*) ;
 int oid_array_clear (struct oid_array*) ;
 int oid_object_info_extended (int ,TYPE_1__*,int *,int ) ;
 int oid_to_hex (TYPE_1__*) ;
 int progress ;
 int promisor_remote_get_direct (int ,int ,scalar_t__) ;
 int read_object_file (TYPE_1__*,int*,int *) ;
 struct ref_delta_entry* ref_deltas ;
 int the_repository ;
 int type_name (int) ;

__attribute__((used)) static void fix_unresolved_deltas(struct hashfile *f)
{
 struct ref_delta_entry **sorted_by_pos;
 int i;
 ALLOC_ARRAY(sorted_by_pos, nr_ref_deltas);
 for (i = 0; i < nr_ref_deltas; i++)
  sorted_by_pos[i] = &ref_deltas[i];
 QSORT(sorted_by_pos, nr_ref_deltas, delta_pos_compare);

 if (has_promisor_remote()) {



  struct oid_array to_fetch = OID_ARRAY_INIT;
  for (i = 0; i < nr_ref_deltas; i++) {
   struct ref_delta_entry *d = sorted_by_pos[i];
   if (!oid_object_info_extended(the_repository, &d->oid,
            ((void*)0),
            OBJECT_INFO_FOR_PREFETCH))
    continue;
   oid_array_append(&to_fetch, &d->oid);
  }
  if (to_fetch.nr)
   promisor_remote_get_direct(the_repository,
         to_fetch.oid, to_fetch.nr);
  oid_array_clear(&to_fetch);
 }

 for (i = 0; i < nr_ref_deltas; i++) {
  struct ref_delta_entry *d = sorted_by_pos[i];
  enum object_type type;
  struct base_data *base_obj = alloc_base_data();

  if (objects[d->obj_no].real_type != OBJ_REF_DELTA)
   continue;
  base_obj->data = read_object_file(&d->oid, &type,
        &base_obj->size);
  if (!base_obj->data)
   continue;

  if (check_object_signature(&d->oid, base_obj->data,
    base_obj->size, type_name(type)))
   die(_("local object %s is corrupt"), oid_to_hex(&d->oid));
  base_obj->obj = append_obj_to_pack(f, d->oid.hash,
     base_obj->data, base_obj->size, type);
  find_unresolved_deltas(base_obj);
  display_progress(progress, nr_resolved_deltas);
 }
 free(sorted_by_pos);
}
