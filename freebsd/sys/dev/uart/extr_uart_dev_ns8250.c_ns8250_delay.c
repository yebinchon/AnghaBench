
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct uart_bas {int rclk; } ;


 int LCR_DLAB ;
 int REG_DLH ;
 int REG_DLL ;
 int REG_LCR ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static int
ns8250_delay(struct uart_bas *bas)
{
 int divisor;
 u_char lcr;

 lcr = uart_getreg(bas, REG_LCR);
 uart_setreg(bas, REG_LCR, lcr | LCR_DLAB);
 uart_barrier(bas);
 divisor = uart_getreg(bas, REG_DLL) | (uart_getreg(bas, REG_DLH) << 8);
 uart_barrier(bas);
 uart_setreg(bas, REG_LCR, lcr);
 uart_barrier(bas);


 if (divisor <= 134)
  return (16000000 * divisor / bas->rclk);
 return (16000 * divisor / (bas->rclk / 1000));
}
