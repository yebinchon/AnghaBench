
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uart_bas {int rclk; } ;


 int SAB_CCR2 ;
 int SAB_TCR ;
 int uart_getreg (struct uart_bas*,int ) ;

__attribute__((used)) static int
sab82532_delay(struct uart_bas *bas)
{
 int divisor, m, n;
 uint8_t bgr, ccr2;

 bgr = uart_getreg(bas, SAB_TCR);
 ccr2 = uart_getreg(bas, SAB_CCR2);
 n = (bgr & 0x3f) + 1;
 m = (bgr >> 6) | ((ccr2 >> 4) & 0xC);
 divisor = n * (1<<m);


 return (16000000 * divisor / bas->rclk);
}
