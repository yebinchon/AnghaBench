
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_softc {int sc_rxput; int sc_rxbufsz; int sc_rxget; scalar_t__ sc_opened; int sc_altbrk; int * sc_rxbuf; TYPE_1__* sc_sysdev; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 int SER_INT_RXREADY ;
 scalar_t__ UART_DEV_CONSOLE ;
 int UART_RECEIVE (struct uart_softc*) ;
 int kdb_alt_break (int ,int *) ;
 int uart_sched_softih (struct uart_softc*,int ) ;

__attribute__((used)) static __inline int
uart_intr_rxready(void *arg)
{
 struct uart_softc *sc = arg;
 int rxp;

 rxp = sc->sc_rxput;
 UART_RECEIVE(sc);
 if (sc->sc_opened)
  uart_sched_softih(sc, SER_INT_RXREADY);
 else
  sc->sc_rxput = sc->sc_rxget;
 return (1);
}
