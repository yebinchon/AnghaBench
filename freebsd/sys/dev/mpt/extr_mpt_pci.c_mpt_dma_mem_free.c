
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpt_softc {int * request_pool; int * reply_dmat; int * parent_dmat; int reply_dmap; int reply; } ;


 int MPT_PRT_DEBUG ;
 int M_DEVBUF ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int ,int ) ;
 int free (int *,int ) ;
 int mpt_lprt (struct mpt_softc*,int ,char*) ;

__attribute__((used)) static void
mpt_dma_mem_free(struct mpt_softc *mpt)
{


        if (mpt->reply_dmat == 0) {
  mpt_lprt(mpt, MPT_PRT_DEBUG, "already released dma memory\n");
  return;
        }

 bus_dmamap_unload(mpt->reply_dmat, mpt->reply_dmap);
 bus_dmamem_free(mpt->reply_dmat, mpt->reply, mpt->reply_dmap);
 bus_dma_tag_destroy(mpt->reply_dmat);
 bus_dma_tag_destroy(mpt->parent_dmat);
 mpt->reply_dmat = ((void*)0);
 free(mpt->request_pool, M_DEVBUF);
 mpt->request_pool = ((void*)0);
}
