
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {TYPE_2__* sc; } ;
typedef TYPE_1__ scr_stat ;
struct TYPE_5__ {int font_loading_in_progress; int adp; } ;
typedef TYPE_2__ sc_softc_t ;


 int FALSE ;
 int TRUE ;
 int vidd_load_font (int ,int,int,int,int *,int,int) ;

void
sc_load_font(scr_stat *scp, int page, int size, int width, u_char *buf,
      int base, int count)
{
    sc_softc_t *sc;

    sc = scp->sc;
    sc->font_loading_in_progress = TRUE;
    vidd_load_font(sc->adp, page, size, width, buf, base, count);
    sc->font_loading_in_progress = FALSE;
}
