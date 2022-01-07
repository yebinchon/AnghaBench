
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videomode {int hdisplay; int vdisplay; int vtotal; int htotal; int dot_clock; } ;


 int DOT_CLOCK_TO_HZ (int ) ;
 int FB_DIVIDE (int,int ) ;

__attribute__((used)) static int
jzlcd_get_bandwidth(const struct videomode *mode)
{
 int refresh;

 refresh = FB_DIVIDE(FB_DIVIDE(DOT_CLOCK_TO_HZ(mode->dot_clock),
     mode->htotal), mode->vtotal);

 return mode->hdisplay * mode->vdisplay * refresh;
}
