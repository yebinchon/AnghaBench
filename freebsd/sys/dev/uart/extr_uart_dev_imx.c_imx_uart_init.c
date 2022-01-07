
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uart_bas {int dummy; } ;


 int DIS (struct uart_bas*,int ,int ) ;
 int ENA (struct uart_bas*,int ,int ) ;
 int FLD (int ,int ) ;
 int GETREG (struct uart_bas*,int ) ;
 int IMXUART_UFCR_RFDIV_DIV1 ;
 int IMXUART_UFCR_RFDIV_MASK ;
 int IMXUART_UFCR_RXTL_MASK ;
 int IMXUART_UFCR_RXTL_SHIFT ;
 int IMXUART_UFCR_TXTL_MASK ;
 int IMXUART_UFCR_TXTL_SHIFT ;
 int IMX_FIFOSZ ;
 int IMX_RXFIFO_LEVEL ;
 int IMX_TXFIFO_LEVEL ;
 int PREN ;
 int PROE ;
 int REG (int ) ;
 int RXEN ;
 int SET (struct uart_bas*,int ,int) ;
 int SETREG (struct uart_bas*,int ,int) ;
 int STPB ;
 int TXEN ;
 int UARTEN ;





 int UBIR ;
 int UBMR ;
 int UCR1 ;
 int UCR2 ;
 int UFCR ;
 int WS ;
 int imx_ccm_uart_hz () ;

__attribute__((used)) static void
imx_uart_init(struct uart_bas *bas, int baudrate, int databits,
    int stopbits, int parity)
{
 uint32_t baseclk, reg;


 SET(bas, REG(UCR1), FLD(UCR1, UARTEN));
 SET(bas, REG(UCR2), FLD(UCR2, RXEN) | FLD(UCR2, TXEN));

 if (databits == 7)
  DIS(bas, UCR2, WS);
 else
  ENA(bas, UCR2, WS);

 if (stopbits == 2)
  ENA(bas, UCR2, STPB);
 else
  DIS(bas, UCR2, STPB);

 switch (parity) {
 case 129:
  DIS(bas, UCR2, PROE);
  ENA(bas, UCR2, PREN);
  break;
 case 132:
  ENA(bas, UCR2, PROE);
  ENA(bas, UCR2, PREN);
  break;
 case 131:
 case 128:

 case 130:
 default:
  DIS(bas, UCR2, PREN);
  break;
 }
 if (baudrate > 0) {
  baseclk = imx_ccm_uart_hz();
  reg = GETREG(bas, REG(UFCR));
  reg = (reg & ~IMXUART_UFCR_RFDIV_MASK) | IMXUART_UFCR_RFDIV_DIV1;
  SETREG(bas, REG(UFCR), reg);
  SETREG(bas, REG(UBIR), 15);
  SETREG(bas, REG(UBMR), (baseclk / baudrate) - 1);
 }






 reg = GETREG(bas, REG(UFCR));
 reg &= ~(IMXUART_UFCR_TXTL_MASK | IMXUART_UFCR_RXTL_MASK);
 reg |= (IMX_FIFOSZ - IMX_TXFIFO_LEVEL) << IMXUART_UFCR_TXTL_SHIFT;
 reg |= IMX_RXFIFO_LEVEL << IMXUART_UFCR_RXTL_SHIFT;
 SETREG(bas, REG(UFCR), reg);
}
