
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int va_line_width; int va_window_size; scalar_t__ va_window; } ;
typedef TYPE_1__ video_adapter_t ;
typedef int u_char ;


 int banksize ;
 scalar_t__ blanked ;
 int bpsl ;
 int fire_pal ;
 int fire_update (TYPE_1__*) ;
 int scrmode ;
 int splhigh () ;
 int splx (int) ;
 int * vid ;
 int vidd_clear (TYPE_1__*) ;
 int vidd_load_palette (TYPE_1__*,int ) ;
 int vidd_set_mode (TYPE_1__*,int ) ;

__attribute__((used)) static int
fire_saver(video_adapter_t *adp, int blank)
{
 int pl;

 if (blank) {

        if (blanked <= 0) {
   pl = splhigh();
   vidd_set_mode(adp, scrmode);
   vidd_load_palette(adp, fire_pal);
   blanked++;
   vid = (u_char *)adp->va_window;
   banksize = adp->va_window_size;
   bpsl = adp->va_line_width;
   splx(pl);
   vidd_clear(adp);
  }
  fire_update(adp);
 } else {
  blanked = 0;
 }

    return 0;
}
