
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int va_line_width; int va_window_size; scalar_t__ va_window; } ;
typedef TYPE_1__ video_adapter_t ;
typedef int u_char ;


 int banksize ;
 scalar_t__ blanked ;
 int bpsl ;
 int logo_pal ;
 int logo_update (TYPE_1__*) ;
 int scrmode ;
 int splhigh () ;
 int splx (int) ;
 int * vid ;
 int vidd_clear (TYPE_1__*) ;
 int vidd_load_palette (TYPE_1__*,int ) ;
 int vidd_set_border (TYPE_1__*,int ) ;
 int vidd_set_mode (TYPE_1__*,int ) ;

__attribute__((used)) static int
logo_saver(video_adapter_t *adp, int blank)
{
 int pl;

 if (blank) {

  if (blanked <= 0) {
   pl = splhigh();
   vidd_set_mode(adp, scrmode);
   vidd_load_palette(adp, logo_pal);
   vidd_set_border(adp, 0);
   blanked++;
   vid = (u_char *)adp->va_window;
   banksize = adp->va_window_size;
   bpsl = adp->va_line_width;
   splx(pl);
   vidd_clear(adp);
  }
  logo_update(adp);
 } else {
  blanked = 0;
 }
 return (0);
}
