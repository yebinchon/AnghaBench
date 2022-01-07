
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int stats_mem; } ;
typedef TYPE_1__* POCE_SOFTC ;


 int oce_dma_free (TYPE_1__*,int *) ;

void
oce_stats_free(POCE_SOFTC sc)
{

 oce_dma_free(sc, &sc->stats_mem);

}
