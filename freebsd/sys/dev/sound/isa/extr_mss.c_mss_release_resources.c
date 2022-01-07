
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mss_info {scalar_t__ lock; scalar_t__ parent_dmat; int * indir; int indir_rid; int * conf_base; int conf_rid; int * io_base; int io_rid; int * drq1; int drq1_rid; int * drq2; int drq2_rid; int * irq; int irq_rid; scalar_t__ ih; } ;
typedef int device_t ;


 int M_DEVBUF ;
 int SYS_RES_DRQ ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,scalar_t__) ;
 int free (struct mss_info*,int ) ;
 int isa_dma_release (int ) ;
 int rman_get_start (int *) ;
 int snd_mtxfree (scalar_t__) ;

__attribute__((used)) static void
mss_release_resources(struct mss_info *mss, device_t dev)
{
     if (mss->irq) {
      if (mss->ih)
   bus_teardown_intr(dev, mss->irq, mss->ih);
   bus_release_resource(dev, SYS_RES_IRQ, mss->irq_rid,
         mss->irq);
  mss->irq = ((void*)0);
     }
     if (mss->drq2) {
  if (mss->drq2 != mss->drq1) {
   isa_dma_release(rman_get_start(mss->drq2));
   bus_release_resource(dev, SYS_RES_DRQ, mss->drq2_rid,
          mss->drq2);
  }
  mss->drq2 = ((void*)0);
     }
      if (mss->drq1) {
  isa_dma_release(rman_get_start(mss->drq1));
  bus_release_resource(dev, SYS_RES_DRQ, mss->drq1_rid,
         mss->drq1);
  mss->drq1 = ((void*)0);
     }
    if (mss->io_base) {
  bus_release_resource(dev, SYS_RES_IOPORT, mss->io_rid,
         mss->io_base);
  mss->io_base = ((void*)0);
     }
     if (mss->conf_base) {
  bus_release_resource(dev, SYS_RES_IOPORT, mss->conf_rid,
         mss->conf_base);
  mss->conf_base = ((void*)0);
     }
 if (mss->indir) {
  bus_release_resource(dev, SYS_RES_IOPORT, mss->indir_rid,
         mss->indir);
  mss->indir = ((void*)0);
 }
     if (mss->parent_dmat) {
  bus_dma_tag_destroy(mss->parent_dmat);
  mss->parent_dmat = 0;
     }
 if (mss->lock) snd_mtxfree(mss->lock);

      free(mss, M_DEVBUF);
}
