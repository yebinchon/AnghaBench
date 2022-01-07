
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sb_info {scalar_t__ parent_dmat; int * io_base; int * drq1; int * drq2; int * irq; scalar_t__ ih; } ;
typedef int device_t ;


 int M_DEVBUF ;
 int SYS_RES_DRQ ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_release_resource (int ,int ,int,int *) ;
 int bus_teardown_intr (int ,int *,scalar_t__) ;
 int free (struct sb_info*,int ) ;
 int isa_dma_release (int ) ;
 int rman_get_start (int *) ;

__attribute__((used)) static void
sb16_release_resources(struct sb_info *sb, device_t dev)
{
     if (sb->irq) {
      if (sb->ih)
   bus_teardown_intr(dev, sb->irq, sb->ih);
   bus_release_resource(dev, SYS_RES_IRQ, 0, sb->irq);
  sb->irq = ((void*)0);
     }
     if (sb->drq2) {
  if (sb->drq2 != sb->drq1) {
   isa_dma_release(rman_get_start(sb->drq2));
   bus_release_resource(dev, SYS_RES_DRQ, 1, sb->drq2);
  }
  sb->drq2 = ((void*)0);
     }
      if (sb->drq1) {
  isa_dma_release(rman_get_start(sb->drq1));
  bus_release_resource(dev, SYS_RES_DRQ, 0, sb->drq1);
  sb->drq1 = ((void*)0);
     }
    if (sb->io_base) {
  bus_release_resource(dev, SYS_RES_IOPORT, 0, sb->io_base);
  sb->io_base = ((void*)0);
     }
     if (sb->parent_dmat) {
  bus_dma_tag_destroy(sb->parent_dmat);
  sb->parent_dmat = 0;
     }
      free(sb, M_DEVBUF);
}
