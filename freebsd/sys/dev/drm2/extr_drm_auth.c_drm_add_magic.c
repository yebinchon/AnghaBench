
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_master {int magicfree; int magiclist; TYPE_1__* minor; } ;
struct TYPE_4__ {unsigned long key; } ;
struct drm_magic_entry {int head; TYPE_2__ hash_item; struct drm_file* priv; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
typedef scalar_t__ drm_magic_t ;
struct TYPE_3__ {struct drm_device* dev; } ;


 int DRM_DEBUG (char*,scalar_t__) ;
 int DRM_LOCK (struct drm_device*) ;
 int DRM_MEM_MAGIC ;
 int DRM_UNLOCK (struct drm_device*) ;
 int ENOMEM ;
 int M_NOWAIT ;
 int M_ZERO ;
 int drm_ht_insert_item (int *,TYPE_2__*) ;
 int list_add_tail (int *,int *) ;
 struct drm_magic_entry* malloc (int,int ,int) ;

__attribute__((used)) static int drm_add_magic(struct drm_master *master, struct drm_file *priv,
    drm_magic_t magic)
{
 struct drm_magic_entry *entry;
 struct drm_device *dev = master->minor->dev;
 DRM_DEBUG("%d\n", magic);

 entry = malloc(sizeof(*entry), DRM_MEM_MAGIC, M_ZERO | M_NOWAIT);
 if (!entry)
  return -ENOMEM;
 entry->priv = priv;
 entry->hash_item.key = (unsigned long)magic;
 DRM_LOCK(dev);
 drm_ht_insert_item(&master->magiclist, &entry->hash_item);
 list_add_tail(&entry->head, &master->magicfree);
 DRM_UNLOCK(dev);

 return 0;
}
