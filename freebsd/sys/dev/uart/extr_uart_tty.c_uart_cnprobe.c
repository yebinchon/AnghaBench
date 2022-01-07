
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct consdev {TYPE_1__* cn_arg; int cn_pri; int cn_name; } ;
struct TYPE_4__ {int * cookie; } ;


 int CN_DEAD ;
 int CN_NORMAL ;
 int CN_REMOTE ;
 int KASSERT (int ,char*) ;
 int RB_SERIAL ;
 int UART_DEV_CONSOLE ;
 int boothowto ;
 int strlcpy (int ,int ,int) ;
 TYPE_1__ uart_console ;
 scalar_t__ uart_cpu_getdev (int ,TYPE_1__*) ;
 int uart_driver_name ;
 scalar_t__ uart_probe (TYPE_1__*) ;

__attribute__((used)) static void
uart_cnprobe(struct consdev *cp)
{

 cp->cn_pri = CN_DEAD;

 KASSERT(uart_console.cookie == ((void*)0), ("foo"));

 if (uart_cpu_getdev(UART_DEV_CONSOLE, &uart_console))
  return;

 if (uart_probe(&uart_console))
  return;

 strlcpy(cp->cn_name, uart_driver_name, sizeof(cp->cn_name));
 cp->cn_pri = (boothowto & RB_SERIAL) ? CN_REMOTE : CN_NORMAL;
 cp->cn_arg = &uart_console;
}
