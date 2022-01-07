
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* sc_p ;
typedef int * device_t ;
struct TYPE_4__ {int* io_rid; int irq_rid; int* drq_rid; int irq_alloced; int * irq; int * io_alloced; int ** io; int dev; int * drq_alloced; int ** drq; } ;


 int * BUS_ALLOC_RESOURCE (int *,int *,int ,int*,int ,int ,int,int) ;
 int DV_F_DRQ_MASK ;
 int DV_F_DUAL_DMA ;




 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_DRQ ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 void* bus_alloc_resource (int ,int ,int*,int,int,int,int) ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 void* bus_alloc_resource_anywhere (int ,int ,int*,int,int) ;
 int device_get_flags (int ) ;
 int * find_masterdev (TYPE_1__*) ;
 int * io_offset ;
 int* io_range ;
 int isa_get_logicalid (int ) ;
 int isa_get_port (int ) ;
 scalar_t__ isa_get_vendorid (int ) ;
 int nitems (int **) ;

__attribute__((used)) static int
alloc_resource(sc_p scp)
{
 int i, base, lid, flags;
 device_t dev;

 flags = 0;
 if (isa_get_vendorid(scp->dev))
  lid = isa_get_logicalid(scp->dev);
 else {
  lid = 130;
  flags = device_get_flags(scp->dev);
 }
 switch(lid) {
 case 128:
 case 130:
  if (lid == 130)
   base = isa_get_port(scp->dev);
  else
   base = 0;
  for (i = 0 ; i < nitems(scp->io); i++) {
   if (scp->io[i] == ((void*)0)) {
    scp->io_rid[i] = i;
    if (base == 0)
     scp->io[i] =
         bus_alloc_resource_anywhere(scp->dev,
                 SYS_RES_IOPORT,
                 &scp->io_rid[i],
         io_range[i],
         RF_ACTIVE);
    else
     scp->io[i] = bus_alloc_resource(scp->dev, SYS_RES_IOPORT, &scp->io_rid[i],
         base + io_offset[i],
         base + io_offset[i] + io_range[i] - 1
         , io_range[i], RF_ACTIVE);
    if (scp->io[i] == ((void*)0))
     return (1);
    scp->io_alloced[i] = 0;
   }
  }
  if (scp->irq == ((void*)0)) {
   scp->irq_rid = 0;
   scp->irq =
    bus_alloc_resource_any(scp->dev, SYS_RES_IRQ,
             &scp->irq_rid,
             RF_ACTIVE|RF_SHAREABLE);
   if (scp->irq == ((void*)0))
    return (1);
   scp->irq_alloced = 0;
  }
  for (i = 0 ; i < nitems(scp->drq); i++) {
   if (scp->drq[i] == ((void*)0)) {
    scp->drq_rid[i] = i;
    if (base == 0 || i == 0)
     scp->drq[i] =
      bus_alloc_resource_any(
       scp->dev, SYS_RES_DRQ,
       &scp->drq_rid[i],
       RF_ACTIVE);
    else if ((flags & DV_F_DUAL_DMA) != 0)

     scp->drq[i] = bus_alloc_resource(scp->dev, SYS_RES_DRQ, &scp->drq_rid[i],
          flags & DV_F_DRQ_MASK,
          flags & DV_F_DRQ_MASK, 1, RF_ACTIVE);
    if (scp->drq[i] == ((void*)0))
     return (1);
    scp->drq_alloced[i] = 0;
   }
  }
  break;
 case 129:
  if (scp->io[0] == ((void*)0)) {
   scp->io_rid[0] = 0;
   scp->io[0] = bus_alloc_resource_anywhere(scp->dev,
         SYS_RES_IOPORT,
         &scp->io_rid[0],
         io_range[0],
         RF_ACTIVE);
   if (scp->io[0] == ((void*)0))
    return (1);
   scp->io_alloced[0] = 0;
  }
  break;
 case 131:
  if (scp->io[0] == ((void*)0)) {
   scp->io_rid[0] = 0;
   scp->io[0] = bus_alloc_resource_anywhere(scp->dev,
         SYS_RES_IOPORT,
         &scp->io_rid[0],
         io_range[0],
         RF_ACTIVE);
   if (scp->io[0] == ((void*)0))
    return (1);
   scp->io_alloced[0] = 0;
  }
  if (scp->irq == ((void*)0)) {

   dev = find_masterdev(scp);
   if (dev == ((void*)0))
    return (1);
   scp->irq_rid = 0;
   scp->irq = BUS_ALLOC_RESOURCE(dev, ((void*)0), SYS_RES_IRQ, &scp->irq_rid,
            0, ~0, 1, RF_ACTIVE | RF_SHAREABLE);
   if (scp->irq == ((void*)0))
    return (1);
   scp->irq_alloced = 0;
  }
  break;
 }
 return (0);
}
