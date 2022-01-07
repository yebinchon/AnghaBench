
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct dtsec_softc* t_Handle ;
struct dtsec_softc {int sc_dev; } ;
typedef int e_FmMacExceptions ;


 int device_printf (int ,char*,int ,int ) ;
 int dtsec_fm_mac_ex_to_str (int ) ;

__attribute__((used)) static void
dtsec_fm_mac_mdio_event_callback(t_Handle h_App,
    e_FmMacExceptions exception)
{
 struct dtsec_softc *sc;

 sc = h_App;
 device_printf(sc->sc_dev, "MDIO event %i: %s.\n", exception,
     dtsec_fm_mac_ex_to_str(exception));
}
