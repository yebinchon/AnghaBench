
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int inuse; int baseaddr; int irq; } ;


 int UART_NLDEVS ;
 TYPE_1__* uart_lres ;

int
uart_legacy_alloc(int which, int *baseaddr, int *irq)
{

 if (which < 0 || which >= UART_NLDEVS || uart_lres[which].inuse)
  return (-1);

 uart_lres[which].inuse = 1;
 *baseaddr = uart_lres[which].baseaddr;
 *irq = uart_lres[which].irq;

 return (0);
}
