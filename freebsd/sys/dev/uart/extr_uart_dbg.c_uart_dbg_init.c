
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;


 int UART_DEV_DBGPORT ;
 int uart_add_sysdev (TYPE_1__*) ;
 TYPE_1__ uart_dbgport ;
 int uart_init (TYPE_1__*) ;

__attribute__((used)) static void
uart_dbg_init(void)
{

 uart_dbgport.type = UART_DEV_DBGPORT;
 uart_add_sysdev(&uart_dbgport);
 uart_init(&uart_dbgport);
}
