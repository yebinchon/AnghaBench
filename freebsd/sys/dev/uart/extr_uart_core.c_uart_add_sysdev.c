
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_devinfo {int dummy; } ;


 int SLIST_INSERT_HEAD (int *,struct uart_devinfo*,int ) ;
 int next ;
 int uart_sysdevs ;

void
uart_add_sysdev(struct uart_devinfo *di)
{
 SLIST_INSERT_HEAD(&uart_sysdevs, di, next);
}
