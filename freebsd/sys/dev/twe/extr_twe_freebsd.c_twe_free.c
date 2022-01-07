
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twe_softc {int twe_io_lock; int twe_config_lock; struct cdev* twe_dev_t; int * twe_io; int twe_dev; scalar_t__ twe_parent_dmat; int * twe_irq; scalar_t__ twe_intr; scalar_t__ twe_buffer_dmat; scalar_t__ twe_immediate_dmat; int twe_immediate_map; int * twe_immediate; int twe_cmdmap; int * twe_cmd; scalar_t__ twe_cmd_dmat; } ;
struct twe_request {int dummy; } ;
struct cdev {int dummy; } ;


 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int TWE_IO_CONFIG_REG ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_dmamap_unload (scalar_t__,int ) ;
 int bus_dmamem_free (scalar_t__,int *,int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,scalar_t__) ;
 int debug_called (int) ;
 int destroy_dev (struct cdev*) ;
 int mtx_destroy (int *) ;
 int sx_destroy (int *) ;
 struct twe_request* twe_dequeue_free (struct twe_softc*) ;
 int twe_free_request (struct twe_request*) ;

__attribute__((used)) static void
twe_free(struct twe_softc *sc)
{
    struct twe_request *tr;

    debug_called(4);


    while ((tr = twe_dequeue_free(sc)) != ((void*)0))
 twe_free_request(tr);

    if (sc->twe_cmd != ((void*)0)) {
 bus_dmamap_unload(sc->twe_cmd_dmat, sc->twe_cmdmap);
 bus_dmamem_free(sc->twe_cmd_dmat, sc->twe_cmd, sc->twe_cmdmap);
    }

    if (sc->twe_immediate != ((void*)0)) {
 bus_dmamap_unload(sc->twe_immediate_dmat, sc->twe_immediate_map);
 bus_dmamem_free(sc->twe_immediate_dmat, sc->twe_immediate,
   sc->twe_immediate_map);
    }

    if (sc->twe_immediate_dmat)
 bus_dma_tag_destroy(sc->twe_immediate_dmat);


    if (sc->twe_buffer_dmat)
 bus_dma_tag_destroy(sc->twe_buffer_dmat);


    if (sc->twe_intr)
 bus_teardown_intr(sc->twe_dev, sc->twe_irq, sc->twe_intr);
    if (sc->twe_irq != ((void*)0))
 bus_release_resource(sc->twe_dev, SYS_RES_IRQ, 0, sc->twe_irq);


    if (sc->twe_parent_dmat)
 bus_dma_tag_destroy(sc->twe_parent_dmat);


    if (sc->twe_io != ((void*)0))
 bus_release_resource(sc->twe_dev, SYS_RES_IOPORT, TWE_IO_CONFIG_REG, sc->twe_io);


    if (sc->twe_dev_t != (struct cdev *)((void*)0))
 destroy_dev(sc->twe_dev_t);

    sx_destroy(&sc->twe_config_lock);
    mtx_destroy(&sc->twe_io_lock);
}
