
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct uart_bas {scalar_t__ chan; } ;
struct uart_softc {int sc_hwmtx; struct uart_bas sc_bas; } ;


 int QUICC_REG_SCC_SCCE (scalar_t__) ;
 int SER_INT_BREAK ;
 int SER_INT_OVERRUN ;
 int SER_INT_RXREADY ;
 int SER_INT_TXIDLE ;
 int quicc_read2 (struct uart_bas*,int ) ;
 int quicc_write2 (struct uart_bas*,int ,int ) ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
quicc_bus_ipend(struct uart_softc *sc)
{
 struct uart_bas *bas;
 int ipend;
 uint16_t scce;

 bas = &sc->sc_bas;
 ipend = 0;

 uart_lock(sc->sc_hwmtx);
 scce = quicc_read2(bas, QUICC_REG_SCC_SCCE(bas->chan - 1));
 quicc_write2(bas, QUICC_REG_SCC_SCCE(bas->chan - 1), ~0);
 uart_unlock(sc->sc_hwmtx);
 if (scce & 0x0001)
  ipend |= SER_INT_RXREADY;
 if (scce & 0x0002)
  ipend |= SER_INT_TXIDLE;
 if (scce & 0x0004)
  ipend |= SER_INT_OVERRUN;
 if (scce & 0x0020)
  ipend |= SER_INT_BREAK;

 return (ipend);
}
