
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwmtx; struct uart_bas sc_bas; } ;


 int SAB_IMR0 ;
 int SAB_IMR0_CDSC ;
 int SAB_IMR0_RFO ;
 int SAB_IMR0_TIME ;
 int uart_barrier (struct uart_bas*) ;
 int uart_lock (int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;
 int uart_unlock (int ) ;

__attribute__((used)) static void
sab82532_bus_grab(struct uart_softc *sc)
{
 struct uart_bas *bas;
 uint8_t imr0;

 bas = &sc->sc_bas;
 imr0 = SAB_IMR0_TIME|SAB_IMR0_CDSC|SAB_IMR0_RFO;
 uart_lock(sc->sc_hwmtx);
 uart_setreg(bas, SAB_IMR0, 0xff & ~imr0);
 uart_barrier(bas);
 uart_unlock(sc->sc_hwmtx);
}
