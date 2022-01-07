
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_kms_softc {int fb_mode_task; } ;
struct fb_info {int * enter; struct vt_kms_softc* fb_priv; } ;


 int DRM_MEM_KMS ;
 int M_WAITOK ;
 int M_ZERO ;
 int TASK_INIT (int *,int ,int ,struct vt_kms_softc*) ;
 void* malloc (int,int ,int) ;
 int vt_kms_postswitch ;
 int vt_restore_fbdev_mode ;

struct fb_info *
framebuffer_alloc()
{
 struct fb_info *info;
 struct vt_kms_softc *sc;

 info = malloc(sizeof(*info), DRM_MEM_KMS, M_WAITOK | M_ZERO);

 sc = malloc(sizeof(*sc), DRM_MEM_KMS, M_WAITOK | M_ZERO);
 TASK_INIT(&sc->fb_mode_task, 0, vt_restore_fbdev_mode, sc);

 info->fb_priv = sc;
 info->enter = &vt_kms_postswitch;

 return (info);
}
