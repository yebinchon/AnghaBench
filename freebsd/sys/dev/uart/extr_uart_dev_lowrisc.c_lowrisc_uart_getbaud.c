
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct uart_bas {int dummy; } ;


 int DEFAULT_BAUD_RATE ;

__attribute__((used)) static u_int
lowrisc_uart_getbaud(struct uart_bas *bas)
{

 return (DEFAULT_BAUD_RATE);
}
