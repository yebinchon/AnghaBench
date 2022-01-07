
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct timeval {int dummy; } ;
struct drm_device {int num_crtcs; scalar_t__ vblank_disable_allowed; int * vblank_refcount; int * _vblank_count; TYPE_1__* driver; void* _vblank_time; void* vblank_inmodeset; void* last_vblank_wait; void* last_vblank; void* vblank_enabled; int vblank_time_lock; int vbl_lock; int vblank_disable_callout; } ;
typedef int atomic_t ;
struct TYPE_2__ {scalar_t__ get_vblank_timestamp; } ;


 int DRM_INFO (char*) ;
 int DRM_MEM_VBLANK ;
 int DRM_VBLANKTIME_RBSIZE ;
 int ENOMEM ;
 int MTX_DEF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int atomic_set (int *,int ) ;
 int callout_init (int *,int) ;
 int drm_vblank_cleanup (struct drm_device*) ;
 void* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;

int drm_vblank_init(struct drm_device *dev, int num_crtcs)
{
 int i, ret = -ENOMEM;

 callout_init(&dev->vblank_disable_callout, 1);
 mtx_init(&dev->vbl_lock, "drmvbl", ((void*)0), MTX_DEF);
 mtx_init(&dev->vblank_time_lock, "drmvtl", ((void*)0), MTX_DEF);

 dev->num_crtcs = num_crtcs;

 dev->_vblank_count = malloc(sizeof(atomic_t) * num_crtcs,
     DRM_MEM_VBLANK, M_NOWAIT);
 if (!dev->_vblank_count)
  goto err;

 dev->vblank_refcount = malloc(sizeof(atomic_t) * num_crtcs,
     DRM_MEM_VBLANK, M_NOWAIT);
 if (!dev->vblank_refcount)
  goto err;

 dev->vblank_enabled = malloc(num_crtcs * sizeof(int),
     DRM_MEM_VBLANK, M_NOWAIT | M_ZERO);
 if (!dev->vblank_enabled)
  goto err;

 dev->last_vblank = malloc(num_crtcs * sizeof(u32),
     DRM_MEM_VBLANK, M_NOWAIT | M_ZERO);
 if (!dev->last_vblank)
  goto err;

 dev->last_vblank_wait = malloc(num_crtcs * sizeof(u32),
     DRM_MEM_VBLANK, M_NOWAIT | M_ZERO);
 if (!dev->last_vblank_wait)
  goto err;

 dev->vblank_inmodeset = malloc(num_crtcs * sizeof(int),
     DRM_MEM_VBLANK, M_NOWAIT | M_ZERO);
 if (!dev->vblank_inmodeset)
  goto err;

 dev->_vblank_time = malloc(num_crtcs * DRM_VBLANKTIME_RBSIZE *
     sizeof(struct timeval), DRM_MEM_VBLANK, M_NOWAIT | M_ZERO);
 if (!dev->_vblank_time)
  goto err;

 DRM_INFO("Supports vblank timestamp caching Rev 1 (10.10.2010).\n");


 if (dev->driver->get_vblank_timestamp)
  DRM_INFO("Driver supports precise vblank timestamp query.\n");
 else
  DRM_INFO("No driver support for vblank timestamp query.\n");


 for (i = 0; i < num_crtcs; i++) {
  atomic_set(&dev->_vblank_count[i], 0);
  atomic_set(&dev->vblank_refcount[i], 0);
 }

 dev->vblank_disable_allowed = 0;
 return 0;

err:
 drm_vblank_cleanup(dev);
 return ret;
}
