
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsec_softc {int ic_lock; int transmit_lock; int receive_lock; scalar_t__ sc_rres; int sc_rrid; int sc_error_irid; int sc_error_ihand; int sc_error_ires; int sc_receive_irid; int sc_receive_ihand; int sc_receive_ires; int sc_transmit_irid; int sc_transmit_ihand; int sc_transmit_ires; int tsec_callout; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int callout_drain (int *) ;
 struct tsec_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int mtx_destroy (int *) ;
 int tsec_detach (struct tsec_softc*) ;
 int tsec_release_intr (struct tsec_softc*,int ,int ,int ,char*) ;

__attribute__((used)) static int
tsec_fdt_detach(device_t dev)
{
 struct tsec_softc *sc;
 int error;

 sc = device_get_softc(dev);


 callout_drain(&sc->tsec_callout);


 tsec_release_intr(sc, sc->sc_transmit_ires, sc->sc_transmit_ihand,
     sc->sc_transmit_irid, "TX");
 tsec_release_intr(sc, sc->sc_receive_ires, sc->sc_receive_ihand,
     sc->sc_receive_irid, "RX");
 tsec_release_intr(sc, sc->sc_error_ires, sc->sc_error_ihand,
     sc->sc_error_irid, "ERR");


 tsec_detach(sc);


 if (sc->sc_rres) {
  error = bus_release_resource(dev, SYS_RES_MEMORY, sc->sc_rrid,
      sc->sc_rres);
  if (error)
   device_printf(dev, "bus_release_resource() failed for"
       " IO memory, error %d\n", error);
 }


 mtx_destroy(&sc->receive_lock);
 mtx_destroy(&sc->transmit_lock);
 mtx_destroy(&sc->ic_lock);
 return (0);
}
