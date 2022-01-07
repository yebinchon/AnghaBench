
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwmtx; struct uart_bas sc_bas; } ;


 int AGTIM ;
 int ATEN ;
 int BKEN ;
 int BRCD ;
 int DIS (struct uart_bas*,int ,int ) ;
 int FLD (int ,int ) ;
 int GETREG (struct uart_bas*,int ) ;
 int REG (int ) ;
 int RRDY ;
 int RRDYEN ;
 int SER_INT_BREAK ;
 int SER_INT_RXREADY ;
 int SER_INT_TXIDLE ;
 int SETREG (struct uart_bas*,int ,int) ;
 int TRDY ;
 int TRDYEN ;
 int UCR1 ;
 int UCR2 ;
 int UCR4 ;
 int USR1 ;
 int USR2 ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
imx_uart_bus_ipend(struct uart_softc *sc)
{
 struct uart_bas *bas;
 int ipend;
 uint32_t usr1, usr2;
 uint32_t ucr1, ucr2, ucr4;

 bas = &sc->sc_bas;
 ipend = 0;

 uart_lock(sc->sc_hwmtx);


 usr1 = GETREG(bas, REG(USR1));
 usr2 = GETREG(bas, REG(USR2));

 SETREG(bas, REG(USR1), usr1);
 SETREG(bas, REG(USR2), usr2);

 ucr1 = GETREG(bas, REG(UCR1));
 ucr2 = GETREG(bas, REG(UCR2));
 ucr4 = GETREG(bas, REG(UCR4));


 if ((usr1 & FLD(USR1, TRDY)) && (ucr1 & FLD(UCR1, TRDYEN))) {
  DIS(bas, UCR1, TRDYEN);
  ipend |= SER_INT_TXIDLE;
 }






 if (((usr1 & FLD(USR1, RRDY)) && (ucr1 & FLD(UCR1, RRDYEN))) ||
     ((usr1 & FLD(USR1, AGTIM)) && (ucr2 & FLD(UCR2, ATEN)))) {
  DIS(bas, UCR1, RRDYEN);
  DIS(bas, UCR2, ATEN);
  ipend |= SER_INT_RXREADY;
 }


 if ((usr2 & FLD(USR2, BRCD)) && (ucr4 & FLD(UCR4, BKEN)))
  ipend |= SER_INT_BREAK;

 uart_unlock(sc->sc_hwmtx);

 return (ipend);
}
