
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct namedobjects_head {int dummy; } ;
struct namedobj_instance {int nn_size; int nv_size; int max_blocks; int idx_mask; int cmp_f; int hash_f; struct namedobjects_head* values; struct namedobjects_head* names; } ;


 int M_IPFW ;
 int M_WAITOK ;
 int M_ZERO ;
 int NAMEDOBJ_HASH_SIZE ;
 int TAILQ_INIT (struct namedobjects_head*) ;
 int ipfw_objhash_bitmap_alloc (int ,void*,int *) ;
 struct namedobj_instance* malloc (size_t,int ,int) ;
 int objhash_cmp_name ;
 int objhash_hash_name ;

struct namedobj_instance *
ipfw_objhash_create(uint32_t items)
{
 struct namedobj_instance *ni;
 int i;
 size_t size;

 size = sizeof(struct namedobj_instance) +
     sizeof(struct namedobjects_head) * NAMEDOBJ_HASH_SIZE +
     sizeof(struct namedobjects_head) * NAMEDOBJ_HASH_SIZE;

 ni = malloc(size, M_IPFW, M_WAITOK | M_ZERO);
 ni->nn_size = NAMEDOBJ_HASH_SIZE;
 ni->nv_size = NAMEDOBJ_HASH_SIZE;

 ni->names = (struct namedobjects_head *)(ni +1);
 ni->values = &ni->names[ni->nn_size];

 for (i = 0; i < ni->nn_size; i++)
  TAILQ_INIT(&ni->names[i]);

 for (i = 0; i < ni->nv_size; i++)
  TAILQ_INIT(&ni->values[i]);


 ni->hash_f = objhash_hash_name;
 ni->cmp_f = objhash_cmp_name;


 ipfw_objhash_bitmap_alloc(items, (void*)&ni->idx_mask, &ni->max_blocks);

 return (ni);
}
