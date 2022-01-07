
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {int sc_dev; int sc_txfifosz; int sc_rxfifosz; int sc_bas; } ;


 int IMX_FIFOSZ ;
 int IMX_TXFIFO_LEVEL ;
 int device_set_desc (int ,char*) ;
 int imx_uart_probe (int *) ;

__attribute__((used)) static int
imx_uart_bus_probe(struct uart_softc *sc)
{
 int error;

 error = imx_uart_probe(&sc->sc_bas);
 if (error)
  return (error);







 sc->sc_rxfifosz = IMX_FIFOSZ;
 sc->sc_txfifosz = IMX_TXFIFO_LEVEL;

 device_set_desc(sc->sc_dev, "Freescale i.MX UART");
 return (0);
}
