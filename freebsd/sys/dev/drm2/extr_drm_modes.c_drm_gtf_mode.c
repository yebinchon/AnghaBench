
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int dummy; } ;
struct drm_device {int dummy; } ;


 struct drm_display_mode* drm_gtf_mode_complex (struct drm_device*,int,int,int,int,int,int,int,int,int) ;

struct drm_display_mode *
drm_gtf_mode(struct drm_device *dev, int hdisplay, int vdisplay, int vrefresh,
      bool lace, int margins)
{
 return drm_gtf_mode_complex(dev, hdisplay, vdisplay, vrefresh, lace,
        margins, 600, 40 * 2, 128, 20 * 2);
}
