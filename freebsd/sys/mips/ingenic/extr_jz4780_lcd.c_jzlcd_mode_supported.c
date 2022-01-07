
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videomode {scalar_t__ hdisplay; scalar_t__ vdisplay; int flags; } ;


 scalar_t__ FB_MAX_BW ;
 scalar_t__ FB_MAX_H ;
 scalar_t__ FB_MAX_W ;
 int VID_INTERLACE ;
 scalar_t__ jzlcd_get_bandwidth (struct videomode const*) ;

__attribute__((used)) static int
jzlcd_mode_supported(const struct videomode *mode)
{

 if (mode->hdisplay > FB_MAX_W || mode->vdisplay > FB_MAX_H)
  return (0);


 if (jzlcd_get_bandwidth(mode) > FB_MAX_BW)
  return (0);


 if ((mode->flags & VID_INTERLACE) != 0)
  return (0);

 return (1);
}
