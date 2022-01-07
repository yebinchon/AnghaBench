
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int * rbuf; int * pbuf; scalar_t__ paddr; scalar_t__ raddr; int pmap; int dmat; int rmap; int dev; } ;


 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int *,int ) ;
 int device_printf (int ,char*) ;
 int printf (char*,...) ;

__attribute__((used)) static void
envy24ht_dmafree(struct sc_info *sc)
{
 bus_dmamap_unload(sc->dmat, sc->rmap);
 bus_dmamap_unload(sc->dmat, sc->pmap);
 bus_dmamem_free(sc->dmat, sc->rbuf, sc->rmap);
 bus_dmamem_free(sc->dmat, sc->pbuf, sc->pmap);


 sc->raddr = sc->paddr = 0;
 sc->pbuf = ((void*)0);
 sc->rbuf = ((void*)0);

 return;
}
