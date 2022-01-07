
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int regiowidth; } ;
struct uart_softc {int sc_txfifosz; int sc_rxfifosz; int sc_dev; struct uart_bas sc_bas; } ;


 int device_set_desc (int ,char*) ;

int
msm_bus_probe(struct uart_softc *sc)
{
 struct uart_bas *bas;

 bas = &sc->sc_bas;
 bas->regiowidth = 4;

 sc->sc_txfifosz = 64;
 sc->sc_rxfifosz = 64;

 device_set_desc(sc->sc_dev, "Qualcomm HSUART");

 return (0);
}
