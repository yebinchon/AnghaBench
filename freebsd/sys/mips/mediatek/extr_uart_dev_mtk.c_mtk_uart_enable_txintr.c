
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {struct uart_bas sc_bas; } ;


 int UART_IER_ETBEI ;
 int UART_IER_REG ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_setreg (struct uart_bas*,int ,int ) ;

__attribute__((used)) static __inline void
mtk_uart_enable_txintr(struct uart_softc *sc)
{
 struct uart_bas *bas = &sc->sc_bas;
 uint8_t cr;

 cr = uart_getreg(bas, UART_IER_REG);
 cr |= UART_IER_ETBEI;
 uart_setreg(bas, UART_IER_REG, cr);
 uart_barrier(bas);
}
