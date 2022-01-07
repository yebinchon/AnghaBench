
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbc_softc {int* io_rid; int* drq_rid; int* irq_rid; scalar_t__* irq_alloced; int ** irq; int dev; scalar_t__* drq_alloced; int ** drq; scalar_t__* io_alloced; int ** io; } ;


 int DRQ_MAX ;
 int IO_MAX ;
 int IRQ_MAX ;
 int RF_ACTIVE ;
 int SYS_RES_DRQ ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int * bus_alloc_resource_anywhere (int ,int ,int*,int ,int ) ;
 int * io_range ;

__attribute__((used)) static int
alloc_resource(struct sbc_softc *scp)
{
 int i;

 for (i = 0 ; i < IO_MAX ; i++) {
  if (scp->io[i] == ((void*)0)) {
   scp->io_rid[i] = i;
   scp->io[i] = bus_alloc_resource_anywhere(scp->dev,
         SYS_RES_IOPORT,
         &scp->io_rid[i],
        io_range[i],
        RF_ACTIVE);
   if (i == 0 && scp->io[i] == ((void*)0))
    return (1);
   scp->io_alloced[i] = 0;
  }
 }
 for (i = 0 ; i < DRQ_MAX ; i++) {
  if (scp->drq[i] == ((void*)0)) {
   scp->drq_rid[i] = i;
   scp->drq[i] = bus_alloc_resource_any(scp->dev,
            SYS_RES_DRQ,
            &scp->drq_rid[i],
            RF_ACTIVE);
   if (i == 0 && scp->drq[i] == ((void*)0))
    return (1);
   scp->drq_alloced[i] = 0;
  }
 }
 for (i = 0 ; i < IRQ_MAX ; i++) {
   if (scp->irq[i] == ((void*)0)) {
   scp->irq_rid[i] = i;
   scp->irq[i] = bus_alloc_resource_any(scp->dev,
            SYS_RES_IRQ,
            &scp->irq_rid[i],
            RF_ACTIVE);
   if (i == 0 && scp->irq[i] == ((void*)0))
    return (1);
   scp->irq_alloced[i] = 0;
  }
 }
 return (0);
}
