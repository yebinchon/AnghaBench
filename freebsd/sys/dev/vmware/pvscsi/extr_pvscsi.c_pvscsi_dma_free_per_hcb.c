
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pvscsi_softc {int sg_list_dma; int sense_buffer_dma; int buffer_dmat; struct pvscsi_hcb* hcbs; int lock; } ;
struct pvscsi_hcb {int dma_map; int callout; } ;


 int bus_dmamap_destroy (int ,int ) ;
 int callout_drain (int *) ;
 int mtx_lock (int *) ;
 int mtx_owned (int *) ;
 int mtx_unlock (int *) ;
 int pvscsi_dma_free (struct pvscsi_softc*,int *) ;

__attribute__((used)) static void
pvscsi_dma_free_per_hcb(struct pvscsi_softc *sc, uint32_t hcbs_allocated)
{
 int i;
 int lock_owned;
 struct pvscsi_hcb *hcb;

 lock_owned = mtx_owned(&sc->lock);

 if (lock_owned) {
  mtx_unlock(&sc->lock);
 }
 for (i = 0; i < hcbs_allocated; ++i) {
  hcb = sc->hcbs + i;
  callout_drain(&hcb->callout);
 };
 if (lock_owned) {
  mtx_lock(&sc->lock);
 }

 for (i = 0; i < hcbs_allocated; ++i) {
  hcb = sc->hcbs + i;
  bus_dmamap_destroy(sc->buffer_dmat, hcb->dma_map);
 };

 pvscsi_dma_free(sc, &sc->sense_buffer_dma);
 pvscsi_dma_free(sc, &sc->sg_list_dma);
}
