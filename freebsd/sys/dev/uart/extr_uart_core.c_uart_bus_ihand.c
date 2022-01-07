
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int serdev_intr_t ;
typedef int device_t ;







 int * uart_intr_break ;
 int * uart_intr_overrun ;
 int * uart_intr_rxready ;
 int * uart_intr_sigchg ;
 int * uart_intr_txidle ;

serdev_intr_t *
uart_bus_ihand(device_t dev, int ipend)
{

 switch (ipend) {
 case 132:
  return (uart_intr_break);
 case 131:
  return (uart_intr_overrun);
 case 130:
  return (uart_intr_rxready);
 case 129:
  return (uart_intr_sigchg);
 case 128:
  return (uart_intr_txidle);
 }
 return (((void*)0));
}
