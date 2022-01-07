
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps3disk_softc {int sc_nregs; int * sc_reg; int * sc_disk; int sc_irq; int sc_irqid; int sc_irqctx; int sc_dmatag; } ;
typedef int device_t ;


 int M_PS3DISK ;
 int PS3DISK_LOCK_DESTROY (struct ps3disk_softc*) ;
 int SYS_RES_IRQ ;
 int bus_dma_tag_destroy (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 struct ps3disk_softc* device_get_softc (int ) ;
 int disk_destroy (int ) ;
 int free (int *,int ) ;

__attribute__((used)) static int
ps3disk_detach(device_t dev)
{
 struct ps3disk_softc *sc = device_get_softc(dev);
 int i;

 for (i = 0; i < sc->sc_nregs; i++)
  disk_destroy(sc->sc_disk[i]);

 bus_dma_tag_destroy(sc->sc_dmatag);

 bus_teardown_intr(dev, sc->sc_irq, sc->sc_irqctx);
 bus_release_resource(dev, SYS_RES_IRQ, sc->sc_irqid, sc->sc_irq);

 free(sc->sc_disk, M_PS3DISK);
 free(sc->sc_reg, M_PS3DISK);

 PS3DISK_LOCK_DESTROY(sc);

 return (0);
}
