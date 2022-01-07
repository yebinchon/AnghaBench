
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int status; } ;
typedef TYPE_1__ scr_stat ;
struct TYPE_7__ {int vtys; int * dev; } ;
typedef TYPE_2__ sc_softc_t ;


 int MOUSE_VISIBLE ;
 TYPE_1__* SC_STAT (int ) ;
 int mark_all (TYPE_1__*) ;

void
sc_remove_all_mouse(sc_softc_t *sc)
{
    scr_stat *scp;
    int i;

    for (i = 0; i < sc->vtys; ++i) {
 scp = SC_STAT(sc->dev[i]);
 if (scp == ((void*)0))
     continue;
 if (scp->status & MOUSE_VISIBLE) {
     scp->status &= ~MOUSE_VISIBLE;
     mark_all(scp);
 }
    }
}
