
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_softc {int sc_swicookie; int sc_hwicookie; int sc_irq; struct rc_chans* sc_channels; } ;
struct rc_chans {int rc_tp; } ;
typedef int device_t ;


 int CD180_NCHAN ;
 int bus_teardown_intr (int ,int ,int ) ;
 struct rc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int rc_release_resources (int ) ;
 int swi_remove (int ) ;
 int ttyfree (int ) ;

__attribute__((used)) static int
rc_detach(device_t dev)
{
 struct rc_softc *sc;
 struct rc_chans *rc;
 int error, i;

 sc = device_get_softc(dev);

 rc = sc->sc_channels;
 for (i = 0; i < CD180_NCHAN; i++, rc++)
  ttyfree(rc->rc_tp);

 error = bus_teardown_intr(dev, sc->sc_irq, sc->sc_hwicookie);
 if (error)
  device_printf(dev, "failed to deregister interrupt handler\n");
 swi_remove(sc->sc_swicookie);
 rc_release_resources(dev);

 return (0);
}
