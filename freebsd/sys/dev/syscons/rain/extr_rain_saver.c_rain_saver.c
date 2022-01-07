
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int va_window_size; int va_line_width; scalar_t__ va_window; } ;
typedef TYPE_1__ video_adapter_t ;
typedef int u_char ;


 int MAX ;
 int SET_ORIGIN (TYPE_1__*,int) ;
 int banksize ;
 scalar_t__ blanked ;
 int bpsl ;
 int bzero (int*,int) ;
 int rain_pal ;
 int rain_update (TYPE_1__*) ;
 int random () ;
 int scrh ;
 int scrmode ;
 int scrw ;
 int splhigh () ;
 int splx (int) ;
 int* vid ;
 int vidd_load_palette (TYPE_1__*,int ) ;
 int vidd_set_border (TYPE_1__*,int ) ;
 int vidd_set_mode (TYPE_1__*,int ) ;

__attribute__((used)) static int
rain_saver(video_adapter_t *adp, int blank)
{
 int i, j, o, p, pl;
 u_char temp;
 int last_origin = -1;

 if (blank) {

  if (blanked <= 0) {
   pl = splhigh();
   vidd_set_mode(adp, scrmode);
   vidd_load_palette(adp, rain_pal);
   vidd_set_border(adp, 0);
   blanked++;
   vid = (u_char *)adp->va_window;
   banksize = adp->va_window_size;
   bpsl = adp->va_line_width;
   splx(pl);
   for (i = 0; i < bpsl*scrh; i += banksize) {
    SET_ORIGIN(adp, i);
    if ((bpsl * scrh - i) < banksize)
     bzero(vid, bpsl * scrh - i);
    else
     bzero(vid, banksize);
   }
   SET_ORIGIN(adp, 0);
   for (i = 0, o = 0, p = 0; i < scrw; i += 2, p += 2) {
    if (p > banksize) {
     p -= banksize;
     o += banksize;
     SET_ORIGIN(adp, o);
    }
    vid[p] = 1 + (random() % MAX);
   }
   o = 0; p = 0;
   for (j = 1; j < scrh; j++)
     for (i = 0, p = bpsl * (j - 1) - o; i < scrw; i += 2, p+= 2) {
      while (p > banksize) {
     p -= banksize;
     o += banksize;
    }
    SET_ORIGIN(adp, o);
    temp = (vid[p] < MAX) ? 1 + vid[p] : 1;
    if (p + bpsl < banksize) {
     vid[p + bpsl] = temp;
    } else {
     SET_ORIGIN(adp, o + banksize);
     vid[p + bpsl - banksize] = temp;
    }
     }
  }


  rain_update(adp);
 } else {
  blanked = 0;
 }
 return (0);
}
