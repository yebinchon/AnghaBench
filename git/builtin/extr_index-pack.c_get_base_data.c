
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int offset; } ;
struct object_entry {TYPE_1__ idx; scalar_t__ size; int type; } ;
struct base_data {void* data; scalar_t__ size; struct base_data* base; struct object_entry* obj; } ;
struct TYPE_4__ {int base_cache_used; } ;


 int ALLOC_GROW (struct base_data**,int,int) ;
 int _ (char*) ;
 int bad_object (int ,int ) ;
 int free (struct base_data**) ;
 void* get_data_from_pack (struct object_entry*) ;
 TYPE_2__* get_thread_data () ;
 scalar_t__ is_delta_type (int ) ;
 void* patch_delta (void*,scalar_t__,void*,scalar_t__,scalar_t__*) ;
 int prune_base_data (struct base_data*) ;

__attribute__((used)) static void *get_base_data(struct base_data *c)
{
 if (!c->data) {
  struct object_entry *obj = c->obj;
  struct base_data **delta = ((void*)0);
  int delta_nr = 0, delta_alloc = 0;

  while (is_delta_type(c->obj->type) && !c->data) {
   ALLOC_GROW(delta, delta_nr + 1, delta_alloc);
   delta[delta_nr++] = c;
   c = c->base;
  }
  if (!delta_nr) {
   c->data = get_data_from_pack(obj);
   c->size = obj->size;
   get_thread_data()->base_cache_used += c->size;
   prune_base_data(c);
  }
  for (; delta_nr > 0; delta_nr--) {
   void *base, *raw;
   c = delta[delta_nr - 1];
   obj = c->obj;
   base = get_base_data(c->base);
   raw = get_data_from_pack(obj);
   c->data = patch_delta(
    base, c->base->size,
    raw, obj->size,
    &c->size);
   free(raw);
   if (!c->data)
    bad_object(obj->idx.offset, _("failed to apply delta"));
   get_thread_data()->base_cache_used += c->size;
   prune_base_data(c);
  }
  free(delta);
 }
 return c->data;
}
