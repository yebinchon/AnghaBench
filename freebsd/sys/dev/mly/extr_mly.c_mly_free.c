
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mly_softc {int mly_lock; int * mly_regs_resource; int mly_regs_rid; int mly_dev; scalar_t__ mly_parent_dmat; int * mly_irq; int mly_irq_rid; scalar_t__ mly_mmbox_dmat; int mly_mmbox_dmamap; scalar_t__ mly_mmbox; scalar_t__ mly_sg_dmat; int mly_sg_dmamap; scalar_t__ mly_sg_table; scalar_t__ mly_buffer_dmat; int * mly_controllerparam; int * mly_controllerinfo; int mly_timeout; int mly_periodic; scalar_t__ mly_intr; int mly_dev_t; } ;


 int M_DEVBUF ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_dmamap_unload (scalar_t__,int ) ;
 int bus_dmamem_free (scalar_t__,scalar_t__,int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,scalar_t__) ;
 int callout_drain (int *) ;
 int debug_called (int) ;
 int destroy_dev (int ) ;
 int free (int *,int ) ;
 int mly_cam_detach (struct mly_softc*) ;
 int mly_release_commands (struct mly_softc*) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static void
mly_free(struct mly_softc *sc)
{

    debug_called(1);


    destroy_dev(sc->mly_dev_t);

    if (sc->mly_intr)
 bus_teardown_intr(sc->mly_dev, sc->mly_irq, sc->mly_intr);
    callout_drain(&sc->mly_periodic);





    mly_cam_detach(sc);


    mly_release_commands(sc);


    if (sc->mly_controllerinfo != ((void*)0))
 free(sc->mly_controllerinfo, M_DEVBUF);


    if (sc->mly_controllerparam != ((void*)0))
 free(sc->mly_controllerparam, M_DEVBUF);


    if (sc->mly_buffer_dmat)
 bus_dma_tag_destroy(sc->mly_buffer_dmat);


    if (sc->mly_sg_table) {
 bus_dmamap_unload(sc->mly_sg_dmat, sc->mly_sg_dmamap);
 bus_dmamem_free(sc->mly_sg_dmat, sc->mly_sg_table, sc->mly_sg_dmamap);
    }
    if (sc->mly_sg_dmat)
 bus_dma_tag_destroy(sc->mly_sg_dmat);


    if (sc->mly_mmbox) {
 bus_dmamap_unload(sc->mly_mmbox_dmat, sc->mly_mmbox_dmamap);
 bus_dmamem_free(sc->mly_mmbox_dmat, sc->mly_mmbox, sc->mly_mmbox_dmamap);
    }
    if (sc->mly_mmbox_dmat)
 bus_dma_tag_destroy(sc->mly_mmbox_dmat);


    if (sc->mly_irq != ((void*)0))
 bus_release_resource(sc->mly_dev, SYS_RES_IRQ, sc->mly_irq_rid, sc->mly_irq);


    if (sc->mly_parent_dmat)
 bus_dma_tag_destroy(sc->mly_parent_dmat);


    if (sc->mly_regs_resource != ((void*)0))
 bus_release_resource(sc->mly_dev, SYS_RES_MEMORY, sc->mly_regs_rid, sc->mly_regs_resource);

    mtx_destroy(&sc->mly_lock);
}
