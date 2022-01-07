
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vt_kms_softc {struct drm_fb_helper* fb_helper; } ;
struct drm_fb_helper {TYPE_2__* dev; } ;
struct TYPE_3__ {int mutex; } ;
struct TYPE_4__ {TYPE_1__ mode_config; } ;


 int drm_fb_helper_restore_fbdev_mode (struct drm_fb_helper*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static void
vt_restore_fbdev_mode(void *arg, int pending)
{
 struct drm_fb_helper *fb_helper;
 struct vt_kms_softc *sc;

 sc = (struct vt_kms_softc *)arg;
 fb_helper = sc->fb_helper;
 sx_xlock(&fb_helper->dev->mode_config.mutex);
 drm_fb_helper_restore_fbdev_mode(fb_helper);
 sx_xunlock(&fb_helper->dev->mode_config.mutex);
}
