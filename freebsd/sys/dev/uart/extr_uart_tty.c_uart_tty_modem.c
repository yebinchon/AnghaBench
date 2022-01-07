
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {int sc_hwsig; } ;
struct tty {int dummy; } ;


 int SER_DELTA (int) ;
 int UART_SETSIG (struct uart_softc*,int) ;
 struct uart_softc* tty_softc (struct tty*) ;

__attribute__((used)) static int
uart_tty_modem(struct tty *tp, int biton, int bitoff)
{
 struct uart_softc *sc;

 sc = tty_softc(tp);
 if (biton != 0 || bitoff != 0)
  UART_SETSIG(sc, SER_DELTA(bitoff | biton) | biton);
 return (sc->sc_hwsig);
}
