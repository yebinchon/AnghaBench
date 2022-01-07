
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {scalar_t__ sc_txbusy; } ;


 int SER_INT_TXIDLE ;
 int uart_sched_softih (struct uart_softc*,int ) ;

__attribute__((used)) static __inline int
uart_intr_txidle(void *arg)
{
 struct uart_softc *sc = arg;

 if (sc->sc_txbusy) {
  sc->sc_txbusy = 0;
  uart_sched_softih(sc, SER_INT_TXIDLE);
 }
 return (0);
}
