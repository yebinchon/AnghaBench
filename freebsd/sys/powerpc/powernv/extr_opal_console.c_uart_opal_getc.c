
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_opal_softc {int alt_break_state; } ;


 int kdb_alt_break (unsigned char,int *) ;
 int uart_opal_get (struct uart_opal_softc*,unsigned char*,int) ;

__attribute__((used)) static int
uart_opal_getc(struct uart_opal_softc *sc)
{
 unsigned char c;
 int retval;

 retval = uart_opal_get(sc, &c, 1);
 if (retval != 1)
  return (-1);




 return (c);
}
