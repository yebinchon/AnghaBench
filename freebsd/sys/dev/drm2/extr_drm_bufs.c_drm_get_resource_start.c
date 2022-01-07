
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int pcir_lock; int * pcir; } ;


 scalar_t__ drm_alloc_resource (struct drm_device*,unsigned int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 unsigned long rman_get_start (int ) ;

unsigned long drm_get_resource_start(struct drm_device *dev,
         unsigned int resource)
{
 unsigned long start;

 mtx_lock(&dev->pcir_lock);

 if (drm_alloc_resource(dev, resource) != 0)
  return 0;

 start = rman_get_start(dev->pcir[resource]);

 mtx_unlock(&dev->pcir_lock);

 return (start);
}
