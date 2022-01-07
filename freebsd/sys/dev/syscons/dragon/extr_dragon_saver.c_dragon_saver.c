
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ va_window; } ;
typedef TYPE_1__ video_adapter_t ;
typedef int u_char ;


 scalar_t__ CURVE ;
 int VIDEO_MODE ;
 scalar_t__ blanked ;
 scalar_t__ curve ;
 int dragon_update (TYPE_1__*) ;
 int splhigh () ;
 int splx (int) ;
 int * vid ;
 int vidd_set_mode (TYPE_1__*,int ) ;

__attribute__((used)) static int
dragon_saver(video_adapter_t *adp, int blank)
{
 int pl;

 if (blank) {

  if (blanked <= 0) {
   pl = splhigh();
   vidd_set_mode(adp, VIDEO_MODE);
   vid = (u_char *)adp->va_window;
   curve = CURVE + 1;
   ++blanked;
   splx(pl);
  }


  dragon_update(adp);
 }
 else {
  blanked = 0;
 }
 return 0;
}
