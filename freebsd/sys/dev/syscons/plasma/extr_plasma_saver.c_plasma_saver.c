
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int va_window_size; scalar_t__ va_window; } ;
typedef TYPE_1__ video_adapter_t ;


 int banksize ;
 scalar_t__ blanked ;
 scalar_t__ plasma_pal ;
 int plasma_update (TYPE_1__*) ;
 int scrmode ;
 int splhigh () ;
 int splx (int) ;
 unsigned char* vid ;
 int vidd_clear (TYPE_1__*) ;
 int vidd_load_palette (TYPE_1__*,unsigned char*) ;
 int vidd_set_border (TYPE_1__*,int ) ;
 int vidd_set_mode (TYPE_1__*,int ) ;

__attribute__((used)) static int
plasma_saver(video_adapter_t *adp, int blank)
{
 int pl;

 if (blank) {

  if (blanked <= 0) {
   pl = splhigh();
   vidd_set_mode(adp, scrmode);
   vidd_load_palette(adp, (unsigned char *)plasma_pal);
   vidd_set_border(adp, 0);
   blanked++;
   vid = (unsigned char *)adp->va_window;
   banksize = adp->va_window_size;
   splx(pl);
   vidd_clear(adp);
  }

  plasma_update(adp);
 } else {
  blanked = 0;
 }
 return (0);
}
