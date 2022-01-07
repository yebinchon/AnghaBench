
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_open_hash {int dummy; } ;
struct drm_hash_item {int dummy; } ;


 int EINVAL ;
 struct drm_hash_item* drm_ht_find_key (struct drm_open_hash*,unsigned long) ;

int drm_ht_find_item(struct drm_open_hash *ht, unsigned long key,
       struct drm_hash_item **item)
{
 struct drm_hash_item *entry;

 entry = drm_ht_find_key(ht, key);
 if (!entry)
  return -EINVAL;

 *item = entry;
 return 0;
}
