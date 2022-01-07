
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {int sc_dev; int sc_txfifosz; int sc_rxfifosz; int sc_bas; } ;


 int FIFO_RX_SIZE_R2 ;
 int FIFO_RX_SIZE_R3 ;
 int FIFO_TX_SIZE_R2 ;
 int FIFO_TX_SIZE_R3 ;
 scalar_t__ IS_FDT ;
 int UART_PIDREG_2 ;
 int __uart_getreg (int *,int ) ;
 int device_set_desc (int ,char*) ;
 int uart_pl011_bus_hwrev_fdt (struct uart_softc*) ;

__attribute__((used)) static int
uart_pl011_bus_probe(struct uart_softc *sc)
{
 int hwrev;

 hwrev = -1;




 if (hwrev < 0)
  hwrev = __uart_getreg(&sc->sc_bas, UART_PIDREG_2) >> 4;

 if (hwrev <= 2) {
  sc->sc_rxfifosz = FIFO_RX_SIZE_R2;
  sc->sc_txfifosz = FIFO_TX_SIZE_R2;
 } else {
  sc->sc_rxfifosz = FIFO_RX_SIZE_R3;
  sc->sc_txfifosz = FIFO_TX_SIZE_R3;
 }

 device_set_desc(sc->sc_dev, "PrimeCell UART (PL011)");

 return (0);
}
