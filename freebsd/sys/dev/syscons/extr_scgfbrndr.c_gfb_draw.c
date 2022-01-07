
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int vi_width; int vi_height; } ;
struct TYPE_12__ {TYPE_2__ va_info; } ;
typedef TYPE_3__ video_adapter_t ;
typedef int u_int16_t ;
struct TYPE_13__ {int xsize; int ysize; int vtb; TYPE_1__* sc; } ;
typedef TYPE_4__ scr_stat ;
struct TYPE_10__ {TYPE_3__* adp; } ;


 int sc_vtb_geta (int *,int) ;
 int sc_vtb_getc (int *,int) ;
 scalar_t__ sc_vtb_pointer (int *,int) ;
 int vidd_clear (TYPE_3__*,int) ;
 int vidd_copy (TYPE_3__*,int,int ,int) ;
 int vidd_putc (TYPE_3__*,int,int,int) ;
 int vidd_puts (TYPE_3__*,int,int *,int) ;

__attribute__((used)) static void
gfb_draw(scr_stat *scp, int from, int count, int flip)
{
 int c;
 int a;
 int i, n;
 video_adapter_t *adp;

 adp = scp->sc->adp;





 if (from + count > scp->xsize*scp->ysize) {





  count = (from + count) -
      (adp->va_info.vi_width * adp->va_info.vi_height);





  n = (count / adp->va_info.vi_width) + 1;


  vidd_copy(adp, n, 0, n);





  vidd_puts(adp, from,
      (u_int16_t *)sc_vtb_pointer(&scp->vtb, from), count);
 }





 else {






  if (flip)
   for (i = count; i-- > 0; ++from) {
    c = sc_vtb_getc(&scp->vtb, from);
    a = sc_vtb_geta(&scp->vtb, from) >> 8;
    vidd_putc(adp, from, c,
        (a >> 4) | ((a & 0xf) << 4));
   }
  else {
   vidd_puts(adp, from,
       (u_int16_t *)sc_vtb_pointer(&scp->vtb, from),
       count);
  }
 }
}
