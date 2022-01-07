
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct mtx {int dummy; } ;


 int BRK ;
 int FLD (int ,int ) ;
 int GETREG (struct uart_bas*,int ) ;
 int IS (struct uart_bas*,int ,int ) ;
 int RDR ;
 int REG (int ) ;
 int URXD ;
 int USR2 ;
 scalar_t__ kdb_break () ;
 int uart_lock (struct mtx*) ;
 int uart_unlock (struct mtx*) ;

__attribute__((used)) static int
imx_uart_getc(struct uart_bas *bas, struct mtx *hwmtx)
{
 int c;

 uart_lock(hwmtx);
 while (!(IS(bas, USR2, RDR)))
  ;

 c = GETREG(bas, REG(URXD));
 uart_unlock(hwmtx);






 return (c & 0xff);
}
