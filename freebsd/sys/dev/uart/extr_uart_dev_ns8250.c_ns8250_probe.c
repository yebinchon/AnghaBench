
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct uart_bas {int dummy; } ;


 int ENXIO ;
 int FCR_UART_ON ;
 int REG_FCR ;
 int REG_IIR ;
 int REG_MCR ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_setreg (struct uart_bas*,int ,int ) ;

__attribute__((used)) static int
ns8250_probe(struct uart_bas *bas)
{
 u_char val;






 val = uart_getreg(bas, REG_IIR);
 if (val & 0x30)
  return (ENXIO);






 val = uart_getreg(bas, REG_MCR);
 if (val & 0xa0)
  return (ENXIO);

 return (0);
}
