
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tunable ;
struct dtsec_softc {int sc_mode; int sc_dev; int sc_start_locked; int sc_port_tx_init; int sc_port_rx_init; } ;


 int DTSEC_MODE_REGULAR ;
 int TUNABLE_INT_FETCH (char*,int *) ;
 char* device_get_nameunit (int ) ;
 int device_printf (int ,char*,char*) ;
 int dtsec_im_fm_port_rx_init ;
 int dtsec_im_fm_port_tx_init ;
 int dtsec_im_if_start_locked ;
 int dtsec_rm_fm_port_rx_init ;
 int dtsec_rm_fm_port_tx_init ;
 int dtsec_rm_if_start_locked ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static void
dtsec_configure_mode(struct dtsec_softc *sc)
{
 char tunable[64];

 snprintf(tunable, sizeof(tunable), "%s.independent_mode",
     device_get_nameunit(sc->sc_dev));

 sc->sc_mode = DTSEC_MODE_REGULAR;
 TUNABLE_INT_FETCH(tunable, &sc->sc_mode);

 if (sc->sc_mode == DTSEC_MODE_REGULAR) {
  sc->sc_port_rx_init = dtsec_rm_fm_port_rx_init;
  sc->sc_port_tx_init = dtsec_rm_fm_port_tx_init;
  sc->sc_start_locked = dtsec_rm_if_start_locked;
 } else {
  sc->sc_port_rx_init = dtsec_im_fm_port_rx_init;
  sc->sc_port_tx_init = dtsec_im_fm_port_tx_init;
  sc->sc_start_locked = dtsec_im_if_start_locked;
 }

 device_printf(sc->sc_dev, "Configured for %s mode.\n",
     (sc->sc_mode == DTSEC_MODE_REGULAR) ? "regular" : "independent");
}
