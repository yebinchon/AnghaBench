
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int SAB_STAR ;
 int SAB_STAR_RFNE ;
 int uart_getreg (struct uart_bas*,int ) ;

__attribute__((used)) static int
sab82532_rxready(struct uart_bas *bas)
{

 return ((uart_getreg(bas, SAB_STAR) & SAB_STAR_RFNE) != 0 ? 1 : 0);
}
