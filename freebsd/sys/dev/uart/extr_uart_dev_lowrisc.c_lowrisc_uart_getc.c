
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uart_bas {int dummy; } ;
struct mtx {int dummy; } ;


 int GETREG (struct uart_bas*,int ) ;
 int INT_STATUS_ACK ;
 int SETREG (struct uart_bas*,int ,int ) ;
 int UART_DR ;
 int UART_INT_STATUS ;
 int uart_lock (struct mtx*) ;
 int uart_unlock (struct mtx*) ;

__attribute__((used)) static int
lowrisc_uart_getc(struct uart_bas *bas, struct mtx *hwmtx)
{
 uint32_t reg;

 uart_lock(hwmtx);
 SETREG(bas, UART_INT_STATUS, INT_STATUS_ACK);
 reg = GETREG(bas, UART_DR);
 uart_unlock(hwmtx);

 return (reg & 0xff);
}
