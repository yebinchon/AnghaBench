
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int video_adapter_t ;
struct TYPE_6__ {scalar_t__ height; } ;
struct TYPE_7__ {int status; int xsize; TYPE_2__ curs_attr; TYPE_1__* sc; } ;
typedef TYPE_3__ scr_stat ;
struct TYPE_5__ {int * adp; } ;


 int VR_CURSOR_BLINK ;
 int VR_CURSOR_ON ;
 int pxlblinkrate ;
 int vidd_set_hw_cursor (int *,int,int) ;

__attribute__((used)) static void
gfb_cursor(scr_stat *scp, int at, int blink, int on, int flip)
{
 video_adapter_t *adp;

 adp = scp->sc->adp;
 if (scp->curs_attr.height <= 0)

  return;

 if (on) {
  if (!blink) {
   scp->status |= VR_CURSOR_ON;
   vidd_set_hw_cursor(adp, at%scp->xsize, at/scp->xsize);
  } else if (++pxlblinkrate & 4) {
   pxlblinkrate = 0;
   scp->status ^= VR_CURSOR_ON;
   if(scp->status & VR_CURSOR_ON)
    vidd_set_hw_cursor(adp, at%scp->xsize,
        at/scp->xsize);
   else
    vidd_set_hw_cursor(adp, -1, -1);
  }
 } else {
  if (scp->status & VR_CURSOR_ON)
   vidd_set_hw_cursor(adp, at%scp->xsize, at/scp->xsize);
  scp->status &= ~VR_CURSOR_ON;
 }
 if (blink)
  scp->status |= VR_CURSOR_BLINK;
 else
  scp->status &= ~VR_CURSOR_BLINK;
}
