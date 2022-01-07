
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_minor {int master_list; } ;
struct TYPE_2__ {int lock_queue; int spinlock; } ;
struct drm_master {int head; struct drm_minor* minor; int magicfree; int magiclist; TYPE_1__ lock; int refcount; } ;


 int DRM_INIT_WAITQUEUE (int *) ;
 int DRM_MAGIC_HASH_ORDER ;
 int DRM_MEM_KMS ;
 int INIT_LIST_HEAD (int *) ;
 int MTX_DEF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int drm_ht_create (int *,int ) ;
 int list_add_tail (int *,int *) ;
 struct drm_master* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int refcount_init (int *,int) ;

struct drm_master *drm_master_create(struct drm_minor *minor)
{
 struct drm_master *master;

 master = malloc(sizeof(*master), DRM_MEM_KMS, M_NOWAIT | M_ZERO);
 if (!master)
  return ((void*)0);

 refcount_init(&master->refcount, 1);
 mtx_init(&master->lock.spinlock, "drm_master__lock__spinlock",
     ((void*)0), MTX_DEF);
 DRM_INIT_WAITQUEUE(&master->lock.lock_queue);
 drm_ht_create(&master->magiclist, DRM_MAGIC_HASH_ORDER);
 INIT_LIST_HEAD(&master->magicfree);
 master->minor = minor;

 list_add_tail(&master->head, &minor->master_list);

 return master;
}
