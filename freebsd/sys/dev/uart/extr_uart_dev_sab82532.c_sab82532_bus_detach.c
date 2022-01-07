
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {struct uart_bas sc_bas; } ;


 int SAB_CCR0 ;
 int SAB_IMR0 ;
 int SAB_IMR1 ;
 int SAB_ISR0 ;
 int SAB_ISR1 ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static int
sab82532_bus_detach(struct uart_softc *sc)
{
 struct uart_bas *bas;

 bas = &sc->sc_bas;
 uart_setreg(bas, SAB_IMR0, 0xff);
 uart_setreg(bas, SAB_IMR1, 0xff);
 uart_barrier(bas);
 uart_getreg(bas, SAB_ISR0);
 uart_getreg(bas, SAB_ISR1);
 uart_barrier(bas);
 uart_setreg(bas, SAB_CCR0, 0);
 uart_barrier(bas);
 return (0);
}
