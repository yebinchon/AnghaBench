
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_master {int refcount; } ;


 int drm_master_destroy (struct drm_master*) ;
 scalar_t__ refcount_release (int *) ;

void drm_master_put(struct drm_master **master)
{
 if (refcount_release(&(*master)->refcount))
  drm_master_destroy(*master);
 *master = ((void*)0);
}
