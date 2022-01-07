
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpt_softc {scalar_t__ request_dmat; scalar_t__ buffer_dmat; int request_dmap; int request; TYPE_1__* request_pool; } ;
struct TYPE_2__ {int dmap; } ;


 int MPT_MAX_REQUESTS (struct mpt_softc*) ;
 int MPT_PRT_DEBUG ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_dmamap_destroy (scalar_t__,int ) ;
 int bus_dmamap_unload (scalar_t__,int ) ;
 int bus_dmamem_free (scalar_t__,int ,int ) ;
 int mpt_lprt (struct mpt_softc*,int ,char*) ;

__attribute__((used)) static void
mpt_dma_buf_free(struct mpt_softc *mpt)
{
 int i;

 if (mpt->request_dmat == 0) {
  mpt_lprt(mpt, MPT_PRT_DEBUG, "already released dma memory\n");
  return;
 }
 for (i = 0; i < MPT_MAX_REQUESTS(mpt); i++) {
  bus_dmamap_destroy(mpt->buffer_dmat, mpt->request_pool[i].dmap);
 }
 bus_dmamap_unload(mpt->request_dmat, mpt->request_dmap);
 bus_dmamem_free(mpt->request_dmat, mpt->request, mpt->request_dmap);
 bus_dma_tag_destroy(mpt->request_dmat);
 mpt->request_dmat = 0;
 bus_dma_tag_destroy(mpt->buffer_dmat);
}
