
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mousedata {scalar_t__ md_iaspect; scalar_t__ md_baspect; } ;
struct TYPE_7__ {int xpixel; int ypixel; int font_size; int status; struct mousedata const* mouse_data; TYPE_2__* sc; } ;
typedef TYPE_3__ scr_stat ;
struct TYPE_6__ {TYPE_1__* adp; } ;
struct TYPE_5__ {int va_flags; } ;


 int PIXEL_MODE ;
 int V_ADP_CWIDTH9 ;
 int abs (scalar_t__) ;
 struct mousedata** mouselarge ;
 struct mousedata** mousesmall ;
 int nitems (struct mousedata**) ;
 int vga_aspect_scale ;

__attribute__((used)) static void
vga_setmdp(scr_stat *scp)
{


 const struct mousedata *mdp;
 const struct mousedata * const *mdpp;
 int aspect, best_i, best_v, i, n, v, wb, wi, xpixel, ypixel;

 xpixel = scp->xpixel;
 ypixel = scp->ypixel;
 if (scp->sc->adp->va_flags & V_ADP_CWIDTH9)
  xpixel = xpixel * 9 / 8;


 aspect = xpixel * 900 / ypixel / 16;
 if (aspect < 99 || aspect > 100)
  aspect = xpixel * 300 / ypixel / 4 * vga_aspect_scale / 100;
 if (scp->font_size <= 8 &&
     (ypixel < 300 || !(scp->status & PIXEL_MODE))) {
  mdpp = &mousesmall[0];
  n = nitems(mousesmall);
 } else {
  mdpp = &mouselarge[0];
  n = nitems(mouselarge);
 }
 if (scp->status & PIXEL_MODE) {
  wb = 1024;
  wi = 256;
 } else {
  wb = 256;
  wi = 1024;
 }
 best_i = 0;
 best_v = 0x7fffffff;
 for (i = 0; i < n; i++) {
  v = (wb * abs(mdpp[i]->md_baspect - aspect) +
       wi * abs(mdpp[i]->md_iaspect - aspect)) / aspect;
  if (best_v > v) {
   best_v = v;
   best_i = i;
  }
 }
 mdp = mdpp[best_i];
 scp->mouse_data = mdp;

}
