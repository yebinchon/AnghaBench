
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {int dummy; } ;


 scalar_t__ strcmp (char*,char const*) ;
 int uart_opentty (struct uart_softc*) ;
 int uart_stdio_backend (struct uart_softc*) ;
 int uart_tty_backend (struct uart_softc*,char const*) ;

int
uart_set_backend(struct uart_softc *sc, const char *opts)
{
 int retval;

 if (opts == ((void*)0))
  return (0);

 if (strcmp("stdio", opts) == 0)
  retval = uart_stdio_backend(sc);
 else
  retval = uart_tty_backend(sc, opts);
 if (retval == 0)
  uart_opentty(sc);

 return (retval);
}
