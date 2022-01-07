
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int video_adapter_t ;
struct TYPE_6__ {scalar_t__ height; } ;
struct TYPE_8__ {int status; int xsize; int vtb; int scr; TYPE_2__* sc; TYPE_1__ curs_attr; } ;
typedef TYPE_3__ scr_stat ;
struct TYPE_7__ {int * adp; } ;


 int TRUE ;
 int VR_CURSOR_BLINK ;
 int VR_CURSOR_ON ;
 int draw_txtcharcursor (TYPE_3__*,int,int ,int,int) ;
 int sc_vtb_geta (int *,int) ;
 int sc_vtb_getc (int *,int) ;
 int sc_vtb_putc (int *,int,int ,int) ;
 int vga_flipattr (int,int ) ;
 int vidd_set_hw_cursor (int *,int,int) ;

__attribute__((used)) static void
vga_txtcursor(scr_stat *scp, int at, int blink, int on, int flip)
{
 video_adapter_t *adp;
 int cursor_attr;

 if (scp->curs_attr.height <= 0)
  return;

 adp = scp->sc->adp;
 if (blink) {
  scp->status |= VR_CURSOR_BLINK;
  if (on) {
   scp->status |= VR_CURSOR_ON;
   vidd_set_hw_cursor(adp, at%scp->xsize,
       at/scp->xsize);
  } else {
   if (scp->status & VR_CURSOR_ON)
    vidd_set_hw_cursor(adp, -1, -1);
   scp->status &= ~VR_CURSOR_ON;
  }
 } else {
  scp->status &= ~VR_CURSOR_BLINK;
  if (on) {
   scp->status |= VR_CURSOR_ON;
   draw_txtcharcursor(scp, at,
        sc_vtb_getc(&scp->vtb, at),
        sc_vtb_geta(&scp->vtb, at),
        flip);
  } else {
   cursor_attr = sc_vtb_geta(&scp->vtb, at);
   if (flip)
    cursor_attr = vga_flipattr(cursor_attr, TRUE);
   if (scp->status & VR_CURSOR_ON)
    sc_vtb_putc(&scp->scr, at,
         sc_vtb_getc(&scp->vtb, at),
         cursor_attr);
   scp->status &= ~VR_CURSOR_ON;
  }
 }
}
