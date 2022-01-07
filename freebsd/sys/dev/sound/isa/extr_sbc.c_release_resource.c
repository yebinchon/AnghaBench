
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbc_softc {int ** irq; int * irq_rid; int dev; int ** ih; int ** drq; int * drq_rid; int ** io; int * io_rid; } ;


 int DRQ_MAX ;
 int IO_MAX ;
 int IRQ_MAX ;
 int SYS_RES_DRQ ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;

__attribute__((used)) static int
release_resource(struct sbc_softc *scp)
{
 int i;

 for (i = 0 ; i < IO_MAX ; i++) {
  if (scp->io[i] != ((void*)0)) {
   bus_release_resource(scp->dev, SYS_RES_IOPORT, scp->io_rid[i], scp->io[i]);
   scp->io[i] = ((void*)0);
  }
 }
 for (i = 0 ; i < DRQ_MAX ; i++) {
  if (scp->drq[i] != ((void*)0)) {
   bus_release_resource(scp->dev, SYS_RES_DRQ, scp->drq_rid[i], scp->drq[i]);
   scp->drq[i] = ((void*)0);
  }
 }
 for (i = 0 ; i < IRQ_MAX ; i++) {
  if (scp->irq[i] != ((void*)0)) {
   if (scp->ih[i] != ((void*)0))
    bus_teardown_intr(scp->dev, scp->irq[i], scp->ih[i]);
   scp->ih[i] = ((void*)0);
   bus_release_resource(scp->dev, SYS_RES_IRQ, scp->irq_rid[i], scp->irq[i]);
   scp->irq[i] = ((void*)0);
  }
 }
 return (0);
}
