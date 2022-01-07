
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwmtx; struct uart_bas sc_bas; } ;


 int SER_INT_BREAK ;
 int SER_INT_OVERRUN ;
 int SER_INT_RXREADY ;
 int SER_INT_SIGCHG ;
 int SER_INT_TXIDLE ;
 int UART_FLUSH_RECEIVER ;





 int UART_IIR_INTP ;
 int UART_IIR_REG ;
 int UART_LSR_BI ;
 int UART_LSR_OE ;
 int UART_LSR_REG ;
 int UART_MSR_REG ;
 int mtk_uart_bus_flush (struct uart_softc*,int ) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
mtk_uart_bus_ipend(struct uart_softc *sc)
{
 struct uart_bas *bas;
 int ipend;
 uint8_t iir, lsr, msr;



 bas = &sc->sc_bas;
 ipend = 0;

 uart_lock(sc->sc_hwmtx);
 iir = uart_getreg(&sc->sc_bas, UART_IIR_REG);
 lsr = uart_getreg(&sc->sc_bas, UART_LSR_REG);
 uart_setreg(&sc->sc_bas, UART_LSR_REG, lsr);
 msr = uart_getreg(&sc->sc_bas, UART_MSR_REG);
 uart_setreg(&sc->sc_bas, UART_MSR_REG, msr);
 if (iir & UART_IIR_INTP) {
  uart_unlock(sc->sc_hwmtx);
  return (0);
 }
 switch ((iir >> 1) & 0x07) {
 case 128:
  ipend |= SER_INT_TXIDLE;
  break;
 case 131:
  mtk_uart_bus_flush(sc, UART_FLUSH_RECEIVER);

 case 132:
  ipend |= SER_INT_RXREADY;
  break;
 case 129:
 case 130:
  ipend |= SER_INT_SIGCHG;
  if (lsr & UART_LSR_BI)
   ipend |= SER_INT_BREAK;
  if (lsr & UART_LSR_OE)
   ipend |= SER_INT_OVERRUN;
  break;
 default:

  break;
 }

 uart_unlock(sc->sc_hwmtx);

 return (ipend);
}
