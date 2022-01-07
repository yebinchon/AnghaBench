
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_opal_softc {int dummy; } ;
struct tty {int dummy; } ;
typedef int buffer ;


 struct uart_opal_softc* tty_softc (struct tty*) ;
 int ttydisc_getc (struct tty*,char*,int) ;
 int uart_opal_put (struct uart_opal_softc*,char*,int) ;

__attribute__((used)) static void
uart_opal_ttyoutwakeup(struct tty *tp)
{
 struct uart_opal_softc *sc;
 char buffer[8];
 int len;

 sc = tty_softc(tp);

 while ((len = ttydisc_getc(tp, buffer, sizeof(buffer))) != 0)
  uart_opal_put(sc, buffer, len);
}
