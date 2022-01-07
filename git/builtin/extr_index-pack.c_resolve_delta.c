
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int oid; int offset; } ;
struct object_entry {TYPE_1__ idx; int real_type; int size; } ;
struct base_data {int size; int data; struct object_entry* obj; } ;
struct TYPE_4__ {scalar_t__ delta_depth; int base_object_no; } ;


 int _ (char*) ;
 int bad_object (int ,int ) ;
 int counter_lock () ;
 int counter_unlock () ;
 scalar_t__ deepest_delta ;
 int deepest_delta_lock () ;
 int deepest_delta_unlock () ;
 int free (void*) ;
 void* get_base_data (struct base_data*) ;
 void* get_data_from_pack (struct object_entry*) ;
 int hash_object_file (int ,int ,int ,int *) ;
 int nr_resolved_deltas ;
 TYPE_2__* obj_stat ;
 struct object_entry* objects ;
 int patch_delta (void*,int ,void*,int ,int *) ;
 int sha1_object (int ,int *,int ,int ,int *) ;
 scalar_t__ show_stat ;
 int type_name (int ) ;

__attribute__((used)) static void resolve_delta(struct object_entry *delta_obj,
     struct base_data *base, struct base_data *result)
{
 void *base_data, *delta_data;

 if (show_stat) {
  int i = delta_obj - objects;
  int j = base->obj - objects;
  obj_stat[i].delta_depth = obj_stat[j].delta_depth + 1;
  deepest_delta_lock();
  if (deepest_delta < obj_stat[i].delta_depth)
   deepest_delta = obj_stat[i].delta_depth;
  deepest_delta_unlock();
  obj_stat[i].base_object_no = j;
 }
 delta_data = get_data_from_pack(delta_obj);
 base_data = get_base_data(base);
 result->obj = delta_obj;
 result->data = patch_delta(base_data, base->size,
       delta_data, delta_obj->size, &result->size);
 free(delta_data);
 if (!result->data)
  bad_object(delta_obj->idx.offset, _("failed to apply delta"));
 hash_object_file(result->data, result->size,
    type_name(delta_obj->real_type), &delta_obj->idx.oid);
 sha1_object(result->data, ((void*)0), result->size, delta_obj->real_type,
      &delta_obj->idx.oid);
 counter_lock();
 nr_resolved_deltas++;
 counter_unlock();
}
