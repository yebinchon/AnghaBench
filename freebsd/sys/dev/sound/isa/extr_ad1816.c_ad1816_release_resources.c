
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad1816_info {scalar_t__ lock; scalar_t__ parent_dmat; int * io_base; int io_rid; int * drq2; int drq2_rid; int * drq1; int drq1_rid; int * irq; int irq_rid; scalar_t__ ih; } ;
typedef int device_t ;


 int M_DEVBUF ;
 int SYS_RES_DRQ ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,scalar_t__) ;
 int free (struct ad1816_info*,int ) ;
 int isa_dma_release (int ) ;
 int rman_get_start (int *) ;
 int snd_mtxfree (scalar_t__) ;

__attribute__((used)) static void
ad1816_release_resources(struct ad1816_info *ad1816, device_t dev)
{
     if (ad1816->irq) {
     if (ad1816->ih)
   bus_teardown_intr(dev, ad1816->irq, ad1816->ih);
  bus_release_resource(dev, SYS_RES_IRQ, ad1816->irq_rid, ad1816->irq);
  ad1816->irq = ((void*)0);
     }
     if (ad1816->drq1) {
  isa_dma_release(rman_get_start(ad1816->drq1));
  bus_release_resource(dev, SYS_RES_DRQ, ad1816->drq1_rid, ad1816->drq1);
  ad1816->drq1 = ((void*)0);
     }
     if (ad1816->drq2) {
  isa_dma_release(rman_get_start(ad1816->drq2));
  bus_release_resource(dev, SYS_RES_DRQ, ad1816->drq2_rid, ad1816->drq2);
  ad1816->drq2 = ((void*)0);
     }
     if (ad1816->io_base) {
  bus_release_resource(dev, SYS_RES_IOPORT, ad1816->io_rid, ad1816->io_base);
  ad1816->io_base = ((void*)0);
     }
     if (ad1816->parent_dmat) {
  bus_dma_tag_destroy(ad1816->parent_dmat);
  ad1816->parent_dmat = 0;
     }
 if (ad1816->lock)
  snd_mtxfree(ad1816->lock);

      free(ad1816, M_DEVBUF);
}
