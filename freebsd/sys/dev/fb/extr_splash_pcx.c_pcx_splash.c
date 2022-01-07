
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 scalar_t__ pcx_draw (int *) ;
 int splash_mode ;
 scalar_t__ splash_on ;
 scalar_t__ vidd_set_mode (int *,int ) ;

__attribute__((used)) static int
pcx_splash(video_adapter_t *adp, int on)
{
 if (on) {
  if (!splash_on) {
   if (vidd_set_mode(adp, splash_mode) || pcx_draw(adp))
    return 1;
   splash_on = TRUE;
  }
  return (0);
 } else {
  splash_on = FALSE;
  return (0);
 }
}
