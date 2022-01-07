
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_4__ {int psim; int ppath; int irq; int ih; int buffer_dmat; int sense_dmat; int sense_dmamap; int sense_buffers; int srb_dmat; int srb_dmamap; int pFreeSRB; int sg_dmat; int iores; } ;
typedef TYPE_1__* PACB ;


 int AC_LOST_DEVICE ;
 int PCIR_BAR (int ) ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int TRUE ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int cam_sim_free (int ,int ) ;
 int cam_sim_path (int ) ;
 TYPE_1__* device_get_softc (int ) ;
 int trm_destroySRB (TYPE_1__*) ;
 int xpt_async (int ,int ,int *) ;
 int xpt_bus_deregister (int ) ;
 int xpt_free_path (int ) ;

__attribute__((used)) static int
trm_detach(device_t dev)
{
 PACB pACB = device_get_softc(dev);

 bus_release_resource(dev, SYS_RES_IOPORT, PCIR_BAR(0), pACB->iores);
 trm_destroySRB(pACB);
 bus_dma_tag_destroy(pACB->sg_dmat);
 bus_dmamap_unload(pACB->srb_dmat, pACB->srb_dmamap);
 bus_dmamem_free(pACB->srb_dmat, pACB->pFreeSRB,
     pACB->srb_dmamap);
 bus_dma_tag_destroy(pACB->srb_dmat);
 bus_dmamap_unload(pACB->sense_dmat, pACB->sense_dmamap);
 bus_dmamem_free(pACB->sense_dmat, pACB->sense_buffers,
     pACB->sense_dmamap);
 bus_dma_tag_destroy(pACB->sense_dmat);
 bus_dma_tag_destroy(pACB->buffer_dmat);
 bus_teardown_intr(dev, pACB->irq, pACB->ih);
 bus_release_resource(dev, SYS_RES_IRQ, 0, pACB->irq);
 xpt_async(AC_LOST_DEVICE, pACB->ppath, ((void*)0));
 xpt_free_path(pACB->ppath);
 xpt_bus_deregister(cam_sim_path(pACB->psim));
 cam_sim_free(pACB->psim, TRUE);
 return (0);
}
