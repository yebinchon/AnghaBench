
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct mtx {int dummy; } ;


 int DELAY (int) ;
 int SAB_CMDR ;
 int SAB_CMDR_RFRD ;
 int SAB_CMDR_RMC ;
 int SAB_ISR0 ;
 int SAB_ISR0_TCD ;
 int SAB_RFIFO ;
 int SAB_STAR ;
 int SAB_STAR_CEC ;
 int SAB_STAR_RFNE ;
 int sab82532_delay (struct uart_bas*) ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (struct mtx*) ;
 int uart_setreg (struct uart_bas*,int ,int ) ;
 int uart_unlock (struct mtx*) ;

__attribute__((used)) static int
sab82532_getc(struct uart_bas *bas, struct mtx *hwmtx)
{
 int c, delay;

 uart_lock(hwmtx);


 delay = sab82532_delay(bas);

 while (!(uart_getreg(bas, SAB_STAR) & SAB_STAR_RFNE)) {
  uart_unlock(hwmtx);
  DELAY(delay);
  uart_lock(hwmtx);
 }

 while (uart_getreg(bas, SAB_STAR) & SAB_STAR_CEC)
  ;
 uart_setreg(bas, SAB_CMDR, SAB_CMDR_RFRD);
 uart_barrier(bas);

 while (!(uart_getreg(bas, SAB_ISR0) & SAB_ISR0_TCD))
  DELAY(delay);

 c = uart_getreg(bas, SAB_RFIFO);
 uart_barrier(bas);


 while (uart_getreg(bas, SAB_STAR) & SAB_STAR_CEC)
  ;
 uart_setreg(bas, SAB_CMDR, SAB_CMDR_RMC);
 uart_barrier(bas);

 uart_unlock(hwmtx);

 return (c);
}
