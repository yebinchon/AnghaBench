
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int DELAY (int) ;
 int SAB_STAR ;
 int SAB_STAR_TEC ;
 int SAB_TIC ;
 int sab82532_delay (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static void
sab82532_putc(struct uart_bas *bas, int c)
{
 int delay, limit;


 delay = sab82532_delay(bas);

 limit = 20;
 while ((uart_getreg(bas, SAB_STAR) & SAB_STAR_TEC) && --limit)
  DELAY(delay);
 uart_setreg(bas, SAB_TIC, c);
 limit = 20;
 while ((uart_getreg(bas, SAB_STAR) & SAB_STAR_TEC) && --limit)
  DELAY(delay);
}
