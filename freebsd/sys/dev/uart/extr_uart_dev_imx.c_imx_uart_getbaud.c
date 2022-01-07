
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct uart_bas {int dummy; } ;


 int GETREG (struct uart_bas*,int ) ;
 int IMXUART_UFCR_RFDIV_MASK ;
 int IMXUART_UFCR_RFDIV_SHIFT ;
 int REG (int ) ;
 int UBIR ;
 int UBMR ;
 int UFCR ;
 int const imx_ccm_uart_hz () ;
 int nitems (int const*) ;

__attribute__((used)) static u_int
imx_uart_getbaud(struct uart_bas *bas)
{
 uint32_t rate, ubir, ubmr;
 u_int baud, blo, bhi, i;
 static const u_int predivs[] = {6, 5, 4, 3, 2, 1, 7, 1};
 static const u_int std_rates[] = {
  9600, 14400, 19200, 38400, 57600, 115200, 230400, 460800, 921600
 };
 i = (GETREG(bas, REG(UFCR)) & IMXUART_UFCR_RFDIV_MASK) >>
     IMXUART_UFCR_RFDIV_SHIFT;
 rate = imx_ccm_uart_hz() / predivs[i];
 ubir = GETREG(bas, REG(UBIR)) + 1;
 ubmr = GETREG(bas, REG(UBMR)) + 1;
 baud = ((rate / 16 ) * ubir) / ubmr;

 blo = (baud * 100) / 103;
 bhi = (baud * 100) / 97;
 for (i = 0; i < nitems(std_rates); i++) {
  rate = std_rates[i];
  if (rate >= blo && rate <= bhi) {
   baud = rate;
   break;
  }
 }

 return (baud);
}
