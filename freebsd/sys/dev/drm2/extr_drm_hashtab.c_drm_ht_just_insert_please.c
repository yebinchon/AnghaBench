
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_open_hash {int dummy; } ;
struct drm_hash_item {unsigned long key; } ;
typedef int seed ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 int drm_ht_insert_item (struct drm_open_hash*,struct drm_hash_item*) ;
 unsigned long hash32_buf (unsigned long*,int,unsigned long) ;

int drm_ht_just_insert_please(struct drm_open_hash *ht, struct drm_hash_item *item,
         unsigned long seed, int bits, int shift,
         unsigned long add)
{
 int ret;
 unsigned long mask = (1 << bits) - 1;
 unsigned long first, unshifted_key = 0;

 unshifted_key = hash32_buf(&seed, sizeof(seed), unshifted_key);
 first = unshifted_key;
 do {
  item->key = (unshifted_key << shift) + add;
  ret = drm_ht_insert_item(ht, item);
  if (ret)
   unshifted_key = (unshifted_key + 1) & mask;
 } while(ret && (unshifted_key != first));

 if (ret) {
  DRM_ERROR("Available key bit space exhausted\n");
  return -EINVAL;
 }
 return 0;
}
