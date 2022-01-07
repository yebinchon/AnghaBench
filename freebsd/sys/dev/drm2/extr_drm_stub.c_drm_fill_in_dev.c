
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_driver {int driver_features; } ;
struct drm_device {int counters; struct drm_driver* driver; int * counts; int * types; int map_hash; int pcir_lock; int ctxlist_mutex; int dev_struct_lock; int event_lock; int count_lock; int irq_lock; int vblank_event_list; int maplist; int ctxlist; int filelist; } ;


 int ARRAY_SIZE (int *) ;
 int DRIVER_GEM ;
 int DRM_ERROR (char*,...) ;
 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int MTX_DEF ;
 int _DRM_STAT_CLOSES ;
 int _DRM_STAT_IOCTLS ;
 int _DRM_STAT_LOCK ;
 int _DRM_STAT_LOCKS ;
 int _DRM_STAT_OPENS ;
 int _DRM_STAT_UNLOCKS ;
 int atomic_set (int *,int ) ;
 int drm_cancel_fill_in_dev (struct drm_device*) ;
 int drm_ctxbitmap_init (struct drm_device*) ;
 int drm_gem_init (struct drm_device*) ;
 scalar_t__ drm_ht_create (int *,int) ;
 int drm_pci_agp_init (struct drm_device*) ;
 int drm_sysctl_init (struct drm_device*) ;
 int mtx_init (int *,char*,int *,int ) ;
 int sx_init (int *,char*) ;

int drm_fill_in_dev(struct drm_device *dev,
      struct drm_driver *driver)
{
 int retcode, i;

 INIT_LIST_HEAD(&dev->filelist);
 INIT_LIST_HEAD(&dev->ctxlist);
 INIT_LIST_HEAD(&dev->maplist);
 INIT_LIST_HEAD(&dev->vblank_event_list);

 mtx_init(&dev->irq_lock, "drmirq", ((void*)0), MTX_DEF);
 mtx_init(&dev->count_lock, "drmcount", ((void*)0), MTX_DEF);
 mtx_init(&dev->event_lock, "drmev", ((void*)0), MTX_DEF);
 sx_init(&dev->dev_struct_lock, "drmslk");
 mtx_init(&dev->ctxlist_mutex, "drmctxlist", ((void*)0), MTX_DEF);
 mtx_init(&dev->pcir_lock, "drmpcir", ((void*)0), MTX_DEF);

 if (drm_ht_create(&dev->map_hash, 12)) {
  return -ENOMEM;
 }


 dev->counters = 6;
 dev->types[0] = _DRM_STAT_LOCK;
 dev->types[1] = _DRM_STAT_OPENS;
 dev->types[2] = _DRM_STAT_CLOSES;
 dev->types[3] = _DRM_STAT_IOCTLS;
 dev->types[4] = _DRM_STAT_LOCKS;
 dev->types[5] = _DRM_STAT_UNLOCKS;




 for (i = 0; i < ARRAY_SIZE(dev->counts); i++)
  atomic_set(&dev->counts[i], 0);

 dev->driver = driver;

 retcode = drm_pci_agp_init(dev);
 if (retcode)
  goto error_out_unreg;



 retcode = drm_ctxbitmap_init(dev);
 if (retcode) {
  DRM_ERROR("Cannot allocate memory for context bitmap.\n");
  goto error_out_unreg;
 }

 if (driver->driver_features & DRIVER_GEM) {
  retcode = drm_gem_init(dev);
  if (retcode) {
   DRM_ERROR("Cannot initialize graphics execution "
      "manager (GEM)\n");
   goto error_out_unreg;
  }
 }

 retcode = drm_sysctl_init(dev);
 if (retcode != 0) {
  DRM_ERROR("Failed to create hw.dri sysctl entry: %d\n",
      retcode);
 }

 return 0;

      error_out_unreg:
 drm_cancel_fill_in_dev(dev);
 return retcode;
}
