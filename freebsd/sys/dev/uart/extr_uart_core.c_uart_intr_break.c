
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_softc {scalar_t__ sc_opened; TYPE_1__* sc_sysdev; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 int SER_INT_BREAK ;
 scalar_t__ UART_DEV_CONSOLE ;
 scalar_t__ kdb_break () ;
 int uart_sched_softih (struct uart_softc*,int ) ;

__attribute__((used)) static __inline int
uart_intr_break(void *arg)
{
 struct uart_softc *sc = arg;







 if (sc->sc_opened)
  uart_sched_softih(sc, SER_INT_BREAK);
 return (0);
}
