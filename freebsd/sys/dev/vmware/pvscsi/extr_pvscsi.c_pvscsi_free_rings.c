
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvscsi_softc {int msg_ring_dma; scalar_t__ use_msg; int cmp_ring_dma; int req_ring_dma; int rings_state_dma; } ;


 int pvscsi_dma_free (struct pvscsi_softc*,int *) ;

__attribute__((used)) static void
pvscsi_free_rings(struct pvscsi_softc *sc)
{

 pvscsi_dma_free(sc, &sc->rings_state_dma);
 pvscsi_dma_free(sc, &sc->req_ring_dma);
 pvscsi_dma_free(sc, &sc->cmp_ring_dma);
 if (sc->use_msg) {
  pvscsi_dma_free(sc, &sc->msg_ring_dma);
 }
}
