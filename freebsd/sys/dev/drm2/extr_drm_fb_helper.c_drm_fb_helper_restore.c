
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DRM_ERROR (char*) ;
 int drm_fb_helper_force_kernel_mode () ;

void drm_fb_helper_restore(void)
{
 bool ret;
 ret = drm_fb_helper_force_kernel_mode();
 if (ret == 1)
  DRM_ERROR("Failed to restore crtc configuration\n");
}
