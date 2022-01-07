
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_open_hash {int size; unsigned int order; int * table; int mask; } ;


 int DRM_ERROR (char*) ;
 int DRM_MEM_HASHTAB ;
 int ENOMEM ;
 int HASH_NOWAIT ;
 int * hashinit_flags (int,int ,int *,int ) ;

int drm_ht_create(struct drm_open_hash *ht, unsigned int order)
{
 ht->size = 1 << order;
 ht->order = order;
 ht->table = ((void*)0);
 ht->table = hashinit_flags(ht->size, DRM_MEM_HASHTAB, &ht->mask,
     HASH_NOWAIT);
 if (!ht->table) {
  DRM_ERROR("Out of memory for hash table\n");
  return -ENOMEM;
 }
 return 0;
}
