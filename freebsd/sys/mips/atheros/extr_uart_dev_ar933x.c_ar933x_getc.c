
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct mtx {int dummy; } ;


 int AR933X_UART_DATA_REG ;
 int AR933X_UART_DATA_RX_CSR ;
 int DELAY (int) ;
 int ar933x_getreg (struct uart_bas*,int ) ;
 int ar933x_setreg (struct uart_bas*,int ,int) ;
 int uart_lock (struct mtx*) ;
 int uart_unlock (struct mtx*) ;

__attribute__((used)) static int
ar933x_getc(struct uart_bas *bas, struct mtx *hwmtx)
{
 int c;

 uart_lock(hwmtx);


 while ((ar933x_getreg(bas, AR933X_UART_DATA_REG) &
     AR933X_UART_DATA_RX_CSR) == 0) {
  uart_unlock(hwmtx);
  DELAY(4);
  uart_lock(hwmtx);
 }


 c = ar933x_getreg(bas, AR933X_UART_DATA_REG) & 0xff;


 ar933x_setreg(bas, AR933X_UART_DATA_REG, AR933X_UART_DATA_RX_CSR);

 uart_unlock(hwmtx);

 return (c);
}
