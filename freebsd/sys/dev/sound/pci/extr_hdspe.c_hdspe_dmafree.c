
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int * pbuf; int * rbuf; int pmap; int dmat; int rmap; } ;


 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int *,int ) ;

__attribute__((used)) static void
hdspe_dmafree(struct sc_info *sc)
{

 bus_dmamap_unload(sc->dmat, sc->rmap);
 bus_dmamap_unload(sc->dmat, sc->pmap);
 bus_dmamem_free(sc->dmat, sc->rbuf, sc->rmap);
 bus_dmamem_free(sc->dmat, sc->pbuf, sc->pmap);
 sc->rbuf = sc->pbuf = ((void*)0);
}
