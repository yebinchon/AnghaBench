
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_open_hash {int dummy; } ;
struct drm_hash_item {int dummy; } ;


 int LIST_REMOVE (struct drm_hash_item*,int ) ;
 int head ;

int drm_ht_remove_item(struct drm_open_hash *ht, struct drm_hash_item *item)
{
 LIST_REMOVE(item, head);
 return 0;
}
