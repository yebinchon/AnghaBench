
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad1816_info {int bufsize; void* drq2; void* drq1; void* irq; void* io_base; int drq2_rid; int drq1_rid; int irq_rid; int io_rid; } ;
typedef int device_t ;


 int RF_ACTIVE ;
 int SD_F_SIMPLEX ;
 int SYS_RES_DRQ ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 void* bus_alloc_resource_any (int ,int ,int *,int ) ;
 int isa_dma_acquire (int) ;
 int isa_dmainit (int,int ) ;
 int pcm_getflags (int ) ;
 int pcm_setflags (int ,int) ;
 int rman_get_start (void*) ;

__attribute__((used)) static int
ad1816_alloc_resources(struct ad1816_info *ad1816, device_t dev)
{
     int ok = 1, pdma, rdma;

 if (!ad1816->io_base)
      ad1816->io_base = bus_alloc_resource_any(dev,
   SYS_RES_IOPORT, &ad1816->io_rid, RF_ACTIVE);
 if (!ad1816->irq)
      ad1816->irq = bus_alloc_resource_any(dev, SYS_RES_IRQ,
   &ad1816->irq_rid, RF_ACTIVE);
 if (!ad1816->drq1)
      ad1816->drq1 = bus_alloc_resource_any(dev, SYS_RES_DRQ,
   &ad1816->drq1_rid, RF_ACTIVE);
     if (!ad1816->drq2)
         ad1816->drq2 = bus_alloc_resource_any(dev, SYS_RES_DRQ,
   &ad1816->drq2_rid, RF_ACTIVE);

     if (!ad1816->io_base || !ad1816->drq1 || !ad1816->irq) ok = 0;

 if (ok) {
  pdma = rman_get_start(ad1816->drq1);
  isa_dma_acquire(pdma);
  isa_dmainit(pdma, ad1816->bufsize);
  if (ad1816->drq2) {
   rdma = rman_get_start(ad1816->drq2);
   isa_dma_acquire(rdma);
   isa_dmainit(rdma, ad1816->bufsize);
  } else
   rdma = pdma;
      if (pdma == rdma)
   pcm_setflags(dev, pcm_getflags(dev) | SD_F_SIMPLEX);
 }

     return ok;
}
