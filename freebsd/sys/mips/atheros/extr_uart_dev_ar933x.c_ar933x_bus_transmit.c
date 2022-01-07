
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {int sc_txdatasz; int* sc_txbuf; int sc_txbusy; int sc_hwmtx; struct uart_bas sc_bas; } ;
struct ar933x_softc {int u_ier; } ;


 int AR933X_UART_CS_REG ;
 int AR933X_UART_CS_TX_BUSY ;
 int AR933X_UART_DATA_REG ;
 int AR933X_UART_DATA_TX_CSR ;
 int AR933X_UART_INT_EN_REG ;
 int AR933X_UART_INT_TX_EMPTY ;
 int ar933x_getreg (struct uart_bas*,int ) ;
 int ar933x_setreg (struct uart_bas*,int ,int) ;
 int uart_barrier (struct uart_bas*) ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
ar933x_bus_transmit(struct uart_softc *sc)
{
 struct uart_bas *bas = &sc->sc_bas;
 struct ar933x_softc *u = (struct ar933x_softc *)sc;
 int i;

 uart_lock(sc->sc_hwmtx);


 while (ar933x_getreg(bas, AR933X_UART_CS_REG) &
     AR933X_UART_CS_TX_BUSY)
  ;




 for (i = 0; i < sc->sc_txdatasz; i++) {

  ar933x_setreg(bas, AR933X_UART_DATA_REG,
      (sc->sc_txbuf[i] & 0xff) | AR933X_UART_DATA_TX_CSR);
  uart_barrier(bas);
 }





 u->u_ier |= AR933X_UART_INT_TX_EMPTY;
 ar933x_setreg(bas, AR933X_UART_INT_EN_REG, u->u_ier);
 uart_barrier(bas);






 sc->sc_txbusy = 1;
 uart_unlock(sc->sc_hwmtx);

 return (0);
}
