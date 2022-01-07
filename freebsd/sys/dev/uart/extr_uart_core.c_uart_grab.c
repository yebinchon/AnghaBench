
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_devinfo {scalar_t__ sc; } ;


 int UART_GRAB (scalar_t__) ;

void
uart_grab(struct uart_devinfo *di)
{

 if (di->sc)
  UART_GRAB(di->sc);
}
