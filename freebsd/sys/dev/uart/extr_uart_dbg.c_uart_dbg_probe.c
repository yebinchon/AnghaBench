
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UART_DEV_DBGPORT ;
 scalar_t__ uart_cpu_getdev (int ,int *) ;
 int uart_dbgport ;
 scalar_t__ uart_probe (int *) ;

__attribute__((used)) static int
uart_dbg_probe(void)
{

 if (uart_cpu_getdev(UART_DEV_DBGPORT, &uart_dbgport))
  return (-1);

 if (uart_probe(&uart_dbgport))
  return (-1);

 return (0);
}
