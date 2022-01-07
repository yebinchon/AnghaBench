
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {int sc_txdatasz; int* sc_txbuf; int sc_txbusy; int sc_hwmtx; struct uart_bas sc_bas; } ;


 int ENA (struct uart_bas*,int ,int ) ;
 int REG (int ) ;
 int SETREG (struct uart_bas*,int ,int) ;
 int TRDYEN ;
 int UCR1 ;
 int UTXD ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
imx_uart_bus_transmit(struct uart_softc *sc)
{
 struct uart_bas *bas = &sc->sc_bas;
 int i;

 bas = &sc->sc_bas;
 uart_lock(sc->sc_hwmtx);







 for (i = 0; i < sc->sc_txdatasz; i++) {
  SETREG(bas, REG(UTXD), sc->sc_txbuf[i] & 0xff);
 }
 sc->sc_txbusy = 1;
 ENA(bas, UCR1, TRDYEN);

 uart_unlock(sc->sc_hwmtx);

 return (0);
}
