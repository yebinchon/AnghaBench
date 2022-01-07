
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int status; int font_size; TYPE_2__* sc; } ;
typedef TYPE_3__ scr_stat ;
struct TYPE_9__ {int fonts_loaded; int font_14; int font_16; int font_8; TYPE_1__* adp; } ;
struct TYPE_8__ {int va_flags; } ;


 int FONT_14 ;
 int FONT_16 ;
 int FONT_8 ;
 int GRAPHICS_MODE ;
 scalar_t__ ISFONTAVAIL (int ) ;
 int PIXEL_MODE ;
 int mark_all (TYPE_3__*) ;
 int sc_load_font (TYPE_3__*,int ,int,int,int ,int ,int) ;
 int sc_show_font (TYPE_3__*,int ) ;

__attribute__((used)) static void
update_font(scr_stat *scp)
{


    if (!(scp->status & GRAPHICS_MODE)) {
 if (!(scp->status & PIXEL_MODE) && ISFONTAVAIL(scp->sc->adp->va_flags)) {
     if (scp->font_size < 14) {
  if (scp->sc->fonts_loaded & FONT_8)
      sc_load_font(scp, 0, 8, 8, scp->sc->font_8, 0, 256);
     } else if (scp->font_size >= 16) {
  if (scp->sc->fonts_loaded & FONT_16)
      sc_load_font(scp, 0, 16, 8, scp->sc->font_16, 0, 256);
     } else {
  if (scp->sc->fonts_loaded & FONT_14)
      sc_load_font(scp, 0, 14, 8, scp->sc->font_14, 0, 256);
     }







     sc_show_font(scp, 0);
 }
 mark_all(scp);
    }

}
