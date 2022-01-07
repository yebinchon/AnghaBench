
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amr_softc {void* amr_ccb; void* amr_sgtable; int * amr_reg; int amr_dev; scalar_t__ amr_parent_dmat; int * amr_irq; scalar_t__ amr_intr; scalar_t__ amr_mailbox_dmat; int amr_mailbox_dmamap; scalar_t__ amr_mailbox; scalar_t__ amr_mailbox64; scalar_t__ amr_sg_dmat; int amr_sg_dmamap; scalar_t__ amr_ccb_dmat; int amr_ccb_dmamap; scalar_t__ amr_buffer64_dmat; scalar_t__ amr_buffer_dmat; } ;


 scalar_t__ AMR_IS_QUARTZ (struct amr_softc*) ;
 int PCIR_BAR (int ) ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int amr_free (struct amr_softc*) ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_dmamap_unload (scalar_t__,int ) ;
 int bus_dmamem_free (scalar_t__,void*,int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,scalar_t__) ;
 int debug_called (int) ;

__attribute__((used)) static void
amr_pci_free(struct amr_softc *sc)
{
    void *p;

    debug_called(1);

    amr_free(sc);


    if (sc->amr_buffer_dmat)
 bus_dma_tag_destroy(sc->amr_buffer_dmat);
    if (sc->amr_buffer64_dmat)
 bus_dma_tag_destroy(sc->amr_buffer64_dmat);


    if (sc->amr_ccb) {
 bus_dmamap_unload(sc->amr_ccb_dmat, sc->amr_ccb_dmamap);
 bus_dmamem_free(sc->amr_ccb_dmat, sc->amr_ccb, sc->amr_ccb_dmamap);
    }
    if (sc->amr_ccb_dmat)
 bus_dma_tag_destroy(sc->amr_ccb_dmat);


    if (sc->amr_sgtable) {
 bus_dmamap_unload(sc->amr_sg_dmat, sc->amr_sg_dmamap);
 bus_dmamem_free(sc->amr_sg_dmat, sc->amr_sgtable, sc->amr_sg_dmamap);
    }
    if (sc->amr_sg_dmat)
 bus_dma_tag_destroy(sc->amr_sg_dmat);


    p = (void *)(uintptr_t)(volatile void *)sc->amr_mailbox64;
    if (sc->amr_mailbox) {
 bus_dmamap_unload(sc->amr_mailbox_dmat, sc->amr_mailbox_dmamap);
 bus_dmamem_free(sc->amr_mailbox_dmat, p, sc->amr_mailbox_dmamap);
    }
    if (sc->amr_mailbox_dmat)
 bus_dma_tag_destroy(sc->amr_mailbox_dmat);


    if (sc->amr_intr)
 bus_teardown_intr(sc->amr_dev, sc->amr_irq, sc->amr_intr);
    if (sc->amr_irq != ((void*)0))
 bus_release_resource(sc->amr_dev, SYS_RES_IRQ, 0, sc->amr_irq);


    if (sc->amr_parent_dmat)
 bus_dma_tag_destroy(sc->amr_parent_dmat);


    if (sc->amr_reg != ((void*)0))
 bus_release_resource(sc->amr_dev,
        AMR_IS_QUARTZ(sc) ? SYS_RES_MEMORY : SYS_RES_IOPORT,
        PCIR_BAR(0), sc->amr_reg);
}
