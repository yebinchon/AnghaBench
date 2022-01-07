
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ps3cdrom_softc {int sc_irq; int sc_irqid; int sc_irqctx; int sc_dmatag; TYPE_1__* sc_xfer; int sc_sim; int sc_path; } ;
typedef int device_t ;
struct TYPE_2__ {int x_dmamap; } ;


 int AC_LOST_DEVICE ;
 int PS3CDROM_LOCK_DESTROY (struct ps3cdrom_softc*) ;
 int PS3CDROM_MAX_XFERS ;
 int SYS_RES_IRQ ;
 int TRUE ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_destroy (int ,int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int cam_sim_free (int ,int ) ;
 int cam_sim_path (int ) ;
 struct ps3cdrom_softc* device_get_softc (int ) ;
 int xpt_async (int ,int ,int *) ;
 int xpt_bus_deregister (int ) ;
 int xpt_free_path (int ) ;

__attribute__((used)) static int
ps3cdrom_detach(device_t dev)
{
 struct ps3cdrom_softc *sc = device_get_softc(dev);
 int i;

 xpt_async(AC_LOST_DEVICE, sc->sc_path, ((void*)0));
 xpt_free_path(sc->sc_path);
 xpt_bus_deregister(cam_sim_path(sc->sc_sim));
 cam_sim_free(sc->sc_sim, TRUE);

 for (i = 0; i < PS3CDROM_MAX_XFERS; i++)
  bus_dmamap_destroy(sc->sc_dmatag, sc->sc_xfer[i].x_dmamap);

 bus_dma_tag_destroy(sc->sc_dmatag);

 bus_teardown_intr(dev, sc->sc_irq, sc->sc_irqctx);
 bus_release_resource(dev, SYS_RES_IRQ, sc->sc_irqid, sc->sc_irq);

 PS3CDROM_LOCK_DESTROY(sc);

 return (0);
}
