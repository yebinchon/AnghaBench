
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cesa_softc {int sc_requests_cdm; int sc_sdesc_cdm; int sc_tdesc_cdm; } ;
typedef int bus_dmasync_op_t ;


 int cesa_sync_dma_mem (int *,int ) ;

__attribute__((used)) static void
cesa_sync_desc(struct cesa_softc *sc, bus_dmasync_op_t op)
{

 cesa_sync_dma_mem(&sc->sc_tdesc_cdm, op);
 cesa_sync_dma_mem(&sc->sc_sdesc_cdm, op);
 cesa_sync_dma_mem(&sc->sc_requests_cdm, op);
}
