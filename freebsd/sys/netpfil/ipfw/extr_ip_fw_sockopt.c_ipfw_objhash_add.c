
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct namedobj_instance {size_t (* hash_f ) (struct namedobj_instance*,int ,int ) ;size_t nn_size; int count; int * values; int * names; } ;
struct named_object {int kidx; int set; int name; } ;


 int TAILQ_INSERT_HEAD (int *,struct named_object*,int ) ;
 int nn_next ;
 int nv_next ;
 size_t objhash_hash_idx (struct namedobj_instance*,int ) ;
 size_t stub1 (struct namedobj_instance*,int ,int ) ;

void
ipfw_objhash_add(struct namedobj_instance *ni, struct named_object *no)
{
 uint32_t hash;

 hash = ni->hash_f(ni, no->name, no->set) % ni->nn_size;
 TAILQ_INSERT_HEAD(&ni->names[hash], no, nn_next);

 hash = objhash_hash_idx(ni, no->kidx);
 TAILQ_INSERT_HEAD(&ni->values[hash], no, nv_next);

 ni->count++;
}
