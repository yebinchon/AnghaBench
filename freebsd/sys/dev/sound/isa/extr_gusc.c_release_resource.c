
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* sc_p ;
typedef int * device_t ;
struct TYPE_4__ {int * irq; int irq_rid; int ** io; int * io_rid; int dev; int ** drq; int * drq_rid; } ;


 int BUS_RELEASE_RESOURCE (int *,int *,int ,int ,int *) ;




 int SYS_RES_DRQ ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int * find_masterdev (TYPE_1__*) ;
 int isa_get_logicalid (int ) ;
 scalar_t__ isa_get_vendorid (int ) ;
 int nitems (int **) ;

__attribute__((used)) static int
release_resource(sc_p scp)
{
 int i, lid;
 device_t dev;

 if (isa_get_vendorid(scp->dev))
  lid = isa_get_logicalid(scp->dev);
 else
  lid = 130;

 switch(lid) {
 case 128:
 case 130:
  for (i = 0 ; i < nitems(scp->io); i++) {
   if (scp->io[i] != ((void*)0)) {
    bus_release_resource(scp->dev, SYS_RES_IOPORT, scp->io_rid[i], scp->io[i]);
    scp->io[i] = ((void*)0);
   }
  }
  if (scp->irq != ((void*)0)) {
   bus_release_resource(scp->dev, SYS_RES_IRQ, scp->irq_rid, scp->irq);
   scp->irq = ((void*)0);
  }
  for (i = 0 ; i < nitems(scp->drq); i++) {
   if (scp->drq[i] != ((void*)0)) {
    bus_release_resource(scp->dev, SYS_RES_DRQ, scp->drq_rid[i], scp->drq[i]);
    scp->drq[i] = ((void*)0);
   }
  }
  break;
 case 129:
  if (scp->io[0] != ((void*)0)) {
   bus_release_resource(scp->dev, SYS_RES_IOPORT, scp->io_rid[0], scp->io[0]);
   scp->io[0] = ((void*)0);
  }
  break;
 case 131:
  if (scp->io[0] != ((void*)0)) {
   bus_release_resource(scp->dev, SYS_RES_IOPORT, scp->io_rid[0], scp->io[0]);
   scp->io[0] = ((void*)0);
  }
  if (scp->irq != ((void*)0)) {

   dev = find_masterdev(scp);
   if (dev == ((void*)0))
    return (1);
   BUS_RELEASE_RESOURCE(dev, ((void*)0), SYS_RES_IOPORT, scp->irq_rid, scp->irq);
   scp->irq = ((void*)0);
  }
  break;
 }
 return (0);
}
