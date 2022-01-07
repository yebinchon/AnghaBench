
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwmtx; struct uart_bas sc_bas; } ;


 int DR_RX_FIFO_EMPTY ;
 int GETREG (struct uart_bas*,int ) ;
 int INT_STATUS_ACK ;
 int SER_INT_RXREADY ;
 int SETREG (struct uart_bas*,int ,int ) ;
 int UART_DR ;
 int UART_INT_STATUS ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
lowrisc_uart_bus_ipend(struct uart_softc *sc)
{
 struct uart_bas *bas;
 int ipend;

 bas = &sc->sc_bas;

 ipend = 0;

 uart_lock(sc->sc_hwmtx);
 if ((GETREG(bas, UART_DR) & DR_RX_FIFO_EMPTY) == 0)
  ipend |= SER_INT_RXREADY;
 SETREG(bas, UART_INT_STATUS, INT_STATUS_ACK);
 uart_unlock(sc->sc_hwmtx);

 return (ipend);
}
