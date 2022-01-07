
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u_char ;
struct TYPE_5__ {int * scr_map; TYPE_1__* cur_scp; } ;
typedef TYPE_2__ sc_softc_t ;
struct TYPE_4__ {int xsize; int scr; } ;


 int ATTR (int) ;
 int BG_BLACK ;
 int FG_LIGHTGREEN ;
 int sc_vtb_putc (int *,int,int ,int ) ;

__attribute__((used)) static void
draw_string(sc_softc_t *sc, int xpos, int ypos, int xoff, u_char *s, int len)
{
 int x;

 for (x = xoff; x < len; x++)
  sc_vtb_putc(&sc->cur_scp->scr,
       ypos*sc->cur_scp->xsize + xpos + x,
       sc->scr_map[s[x]], ATTR(FG_LIGHTGREEN | BG_BLACK));
}
