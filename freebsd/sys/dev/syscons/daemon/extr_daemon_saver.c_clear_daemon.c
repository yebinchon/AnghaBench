
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * scr_map; TYPE_1__* cur_scp; } ;
typedef TYPE_2__ sc_softc_t ;
struct TYPE_4__ {int xsize; int scr; } ;


 int ATTR (int) ;
 int BG_BLACK ;
 int FG_LIGHTGREY ;
 int sc_vtb_erase (int *,int,int,int ,int ) ;

__attribute__((used)) static void
clear_daemon(sc_softc_t *sc, int xpos, int ypos, int dxdir, int xoff, int yoff,
     int xlen, int ylen)
{
 int y;

 if (xlen <= 0)
  return;
 for (y = yoff; y < ylen; y++) {
  sc_vtb_erase(&sc->cur_scp->scr,
        (ypos + y)*sc->cur_scp->xsize + xpos + xoff,
        xlen - xoff,
        sc->scr_map[0x20], ATTR(FG_LIGHTGREY | BG_BLACK));
 }
}
