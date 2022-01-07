
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ess_info {scalar_t__ parent_dmat; int * io_base; int * drq2; int * drq1; int * irq; scalar_t__ ih; } ;
typedef int device_t ;


 int M_DEVBUF ;
 int SYS_RES_DRQ ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_release_resource (int ,int ,int,int *) ;
 int bus_teardown_intr (int ,int *,scalar_t__) ;
 int free (struct ess_info*,int ) ;
 int isa_dma_release (int ) ;
 int rman_get_start (int *) ;

__attribute__((used)) static void
ess_release_resources(struct ess_info *sc, device_t dev)
{
     if (sc->irq) {
      if (sc->ih)
   bus_teardown_intr(dev, sc->irq, sc->ih);
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->irq);
  sc->irq = ((void*)0);
     }
     if (sc->drq1) {
  isa_dma_release(rman_get_start(sc->drq1));
  bus_release_resource(dev, SYS_RES_DRQ, 0, sc->drq1);
  sc->drq1 = ((void*)0);
     }
     if (sc->drq2) {
  isa_dma_release(rman_get_start(sc->drq2));
  bus_release_resource(dev, SYS_RES_DRQ, 1, sc->drq2);
  sc->drq2 = ((void*)0);
     }
     if (sc->io_base) {
  bus_release_resource(dev, SYS_RES_IOPORT, 0, sc->io_base);
  sc->io_base = ((void*)0);
     }
     if (sc->parent_dmat) {
  bus_dma_tag_destroy(sc->parent_dmat);
  sc->parent_dmat = 0;
     }
      free(sc, M_DEVBUF);
}
