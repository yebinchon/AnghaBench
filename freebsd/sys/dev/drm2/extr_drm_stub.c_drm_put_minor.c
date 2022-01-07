
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_minor {int device; int buf_sigio; int index; } ;


 int DRM_DEBUG (char*,int ) ;
 int DRM_MEM_MINOR ;
 int destroy_dev (int ) ;
 int free (struct drm_minor*,int ) ;
 int funsetown (int *) ;

int drm_put_minor(struct drm_minor **minor_p)
{
 struct drm_minor *minor = *minor_p;

 DRM_DEBUG("release secondary minor %d\n", minor->index);

 funsetown(&minor->buf_sigio);

 destroy_dev(minor->device);

 free(minor, DRM_MEM_MINOR);
 *minor_p = ((void*)0);
 return 0;
}
