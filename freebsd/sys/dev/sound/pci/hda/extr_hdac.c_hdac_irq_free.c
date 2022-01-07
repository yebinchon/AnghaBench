
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_irq {int irq_rid; int * irq_res; int * irq_handle; } ;
struct hdac_softc {int dev; struct hdac_irq irq; } ;


 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int pci_release_msi (int ) ;

__attribute__((used)) static void
hdac_irq_free(struct hdac_softc *sc)
{
 struct hdac_irq *irq;

 irq = &sc->irq;
 if (irq->irq_res != ((void*)0) && irq->irq_handle != ((void*)0))
  bus_teardown_intr(sc->dev, irq->irq_res, irq->irq_handle);
 if (irq->irq_res != ((void*)0))
  bus_release_resource(sc->dev, SYS_RES_IRQ, irq->irq_rid,
      irq->irq_res);
 if (irq->irq_rid == 0x1)
  pci_release_msi(sc->dev);
 irq->irq_handle = ((void*)0);
 irq->irq_res = ((void*)0);
 irq->irq_rid = 0x0;
}
