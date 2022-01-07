
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int irq; int irqid; int ih; int reg; int regid; int buf; int bufid; } ;
typedef int device_t ;


 int M_DEVBUF ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int free (struct sc_info*,int ) ;
 struct sc_info* pcm_getdevinfo (int ) ;
 int pcm_unregister (int ) ;

__attribute__((used)) static int
nm_pci_detach(device_t dev)
{
 int r;
 struct sc_info *sc;

 r = pcm_unregister(dev);
 if (r)
  return r;

 sc = pcm_getdevinfo(dev);
 bus_release_resource(dev, SYS_RES_MEMORY, sc->bufid, sc->buf);
 bus_release_resource(dev, SYS_RES_MEMORY, sc->regid, sc->reg);
 bus_teardown_intr(dev, sc->irq, sc->ih);
 bus_release_resource(dev, SYS_RES_IRQ, sc->irqid, sc->irq);
 free(sc, M_DEVBUF);

 return 0;
}
