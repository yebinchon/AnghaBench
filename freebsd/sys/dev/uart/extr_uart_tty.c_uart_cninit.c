
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_devinfo {int type; struct consdev* cookie; } ;
struct consdev {struct uart_devinfo* cn_arg; } ;


 int KASSERT (int ,char*) ;
 int UART_DEV_CONSOLE ;
 int uart_add_sysdev (struct uart_devinfo*) ;
 int uart_init (struct uart_devinfo*) ;

__attribute__((used)) static void
uart_cninit(struct consdev *cp)
{
 struct uart_devinfo *di;
 di = cp->cn_arg;
 KASSERT(di->cookie == ((void*)0), ("foo"));
 di->cookie = cp;
 di->type = UART_DEV_CONSOLE;
 uart_add_sysdev(di);
 uart_init(di);
}
