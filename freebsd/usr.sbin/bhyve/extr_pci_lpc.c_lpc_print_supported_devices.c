
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t LPC_UART_NUM ;
 char** lpc_uart_names ;
 int printf (char*,...) ;

void
lpc_print_supported_devices()
{
 size_t i;

 printf("bootrom\n");
 for (i = 0; i < LPC_UART_NUM; i++)
  printf("%s\n", lpc_uart_names[i]);
}
