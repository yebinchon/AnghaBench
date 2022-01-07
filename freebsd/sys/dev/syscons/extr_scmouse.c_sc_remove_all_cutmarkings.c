
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int scr_stat ;
struct TYPE_3__ {int vtys; int * dev; } ;
typedef TYPE_1__ sc_softc_t ;


 int * SC_STAT (int ) ;
 int sc_remove_cutmarking (int *) ;

void
sc_remove_all_cutmarkings(sc_softc_t *sc)
{
    scr_stat *scp;
    int i;


    for (i = 0; i < sc->vtys; ++i) {
 scp = SC_STAT(sc->dev[i]);
 if (scp == ((void*)0))
     continue;
 sc_remove_cutmarking(scp);
    }
}
