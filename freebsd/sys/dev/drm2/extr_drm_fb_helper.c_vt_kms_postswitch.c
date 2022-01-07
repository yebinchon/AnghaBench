
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_kms_softc {int fb_helper; int fb_mode_task; } ;


 int drm_fb_helper_restore_fbdev_mode (int ) ;
 int kdb_active ;
 int * panicstr ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_thread ;

__attribute__((used)) static int
vt_kms_postswitch(void *arg)
{
 struct vt_kms_softc *sc;

 sc = (struct vt_kms_softc *)arg;

 if (!kdb_active && panicstr == ((void*)0))
  taskqueue_enqueue(taskqueue_thread, &sc->fb_mode_task);
 else
  drm_fb_helper_restore_fbdev_mode(sc->fb_helper);

 return (0);
}
