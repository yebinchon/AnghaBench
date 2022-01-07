
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct dtsec_softc* t_Handle ;
struct dtsec_softc {int sc_dev; } ;
typedef int e_FmPortExceptions ;


 int device_printf (int ,char*,int ,int ) ;
 int dtsec_fm_port_ex_to_str (int ) ;

void
dtsec_fm_port_rx_exception_callback(t_Handle app,
    e_FmPortExceptions exception)
{
 struct dtsec_softc *sc;

 sc = app;
 device_printf(sc->sc_dev, "RX exception: %i: %s.\n", exception,
     dtsec_fm_port_ex_to_str(exception));
}
