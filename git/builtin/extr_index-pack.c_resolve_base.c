
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_entry {int dummy; } ;
struct base_data {int * data; struct object_entry* obj; } ;


 struct base_data* alloc_base_data () ;
 int find_unresolved_deltas (struct base_data*) ;

__attribute__((used)) static void resolve_base(struct object_entry *obj)
{
 struct base_data *base_obj = alloc_base_data();
 base_obj->obj = obj;
 base_obj->data = ((void*)0);
 find_unresolved_deltas(base_obj);
}
