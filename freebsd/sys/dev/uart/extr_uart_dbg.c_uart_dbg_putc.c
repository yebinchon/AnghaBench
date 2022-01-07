
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int uart_dbgport ;
 int uart_putc (int *,int) ;

__attribute__((used)) static void
uart_dbg_putc(int c)
{

 uart_putc(&uart_dbgport, c);
}
