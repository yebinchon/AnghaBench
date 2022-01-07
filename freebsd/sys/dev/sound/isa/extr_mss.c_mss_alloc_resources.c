
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mss_info {scalar_t__ io_rid; scalar_t__ irq_rid; scalar_t__ drq1_rid; scalar_t__ conf_rid; scalar_t__ drq2_rid; void* drq1; void* drq2; int bd_flags; int bufsize; void* conf_base; void* irq; void* io_base; } ;
typedef int device_t ;


 int BD_F_DUPLEX ;
 int RF_ACTIVE ;
 int SYS_RES_DRQ ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 void* bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 int isa_dma_acquire (int) ;
 int isa_dmainit (int,int ) ;
 int rman_get_start (void*) ;

__attribute__((used)) static int
mss_alloc_resources(struct mss_info *mss, device_t dev)
{
     int pdma, rdma, ok = 1;
 if (!mss->io_base)
      mss->io_base = bus_alloc_resource_any(dev, SYS_RES_IOPORT,
            &mss->io_rid, RF_ACTIVE);
 if (!mss->irq)
      mss->irq = bus_alloc_resource_any(dev, SYS_RES_IRQ,
        &mss->irq_rid, RF_ACTIVE);
 if (!mss->drq1)
      mss->drq1 = bus_alloc_resource_any(dev, SYS_RES_DRQ,
         &mss->drq1_rid,
         RF_ACTIVE);
     if (mss->conf_rid >= 0 && !mss->conf_base)
         mss->conf_base = bus_alloc_resource_any(dev, SYS_RES_IOPORT,
       &mss->conf_rid,
       RF_ACTIVE);
     if (mss->drq2_rid >= 0 && !mss->drq2)
         mss->drq2 = bus_alloc_resource_any(dev, SYS_RES_DRQ,
         &mss->drq2_rid,
         RF_ACTIVE);

 if (!mss->io_base || !mss->drq1 || !mss->irq) ok = 0;
 if (mss->conf_rid >= 0 && !mss->conf_base) ok = 0;
 if (mss->drq2_rid >= 0 && !mss->drq2) ok = 0;

 if (ok) {
  pdma = rman_get_start(mss->drq1);
  isa_dma_acquire(pdma);
  isa_dmainit(pdma, mss->bufsize);
  mss->bd_flags &= ~BD_F_DUPLEX;
  if (mss->drq2) {
   rdma = rman_get_start(mss->drq2);
   isa_dma_acquire(rdma);
   isa_dmainit(rdma, mss->bufsize);
   mss->bd_flags |= BD_F_DUPLEX;
  } else mss->drq2 = mss->drq1;
 }
     return ok;
}
