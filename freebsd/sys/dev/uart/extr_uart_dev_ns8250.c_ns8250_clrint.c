
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uart_bas {int dummy; } ;


 int IIR_IMASK ;
 int IIR_MLSC ;
 int IIR_NOPEND ;
 int IIR_RLS ;
 int IIR_RXRDY ;
 int IIR_RXTOUT ;
 int LSR_BI ;
 int LSR_FE ;
 int LSR_PE ;
 int REG_DATA ;
 int REG_IIR ;
 int REG_LSR ;
 int REG_MSR ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;

__attribute__((used)) static void
ns8250_clrint(struct uart_bas *bas)
{
 uint8_t iir, lsr;

 iir = uart_getreg(bas, REG_IIR);
 while ((iir & IIR_NOPEND) == 0) {
  iir &= IIR_IMASK;
  if (iir == IIR_RLS) {
   lsr = uart_getreg(bas, REG_LSR);
   if (lsr & (LSR_BI|LSR_FE|LSR_PE))
    (void)uart_getreg(bas, REG_DATA);
  } else if (iir == IIR_RXRDY || iir == IIR_RXTOUT)
   (void)uart_getreg(bas, REG_DATA);
  else if (iir == IIR_MLSC)
   (void)uart_getreg(bas, REG_MSR);
  uart_barrier(bas);
  iir = uart_getreg(bas, REG_IIR);
 }
}
