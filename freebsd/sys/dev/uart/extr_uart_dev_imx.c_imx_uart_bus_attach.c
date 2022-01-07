
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {struct uart_devinfo* sc_sysdev; struct uart_bas sc_bas; } ;
struct uart_devinfo {int baudrate; int databits; int stopbits; int parity; } ;


 int ACIEN ;
 int ADEN ;
 int AIRINTEN ;
 int ATEN ;
 int AWAKEN ;
 int BKEN ;
 int DCD ;
 int DIS (struct uart_bas*,int ,int ) ;
 int DREN ;
 int DTRDEN ;
 int DTREN ;
 int ENA (struct uart_bas*,int ,int ) ;
 int ENIRI ;
 int ESCI ;
 int FRAERREN ;
 int IDEN ;
 int IRTS ;
 int OREN ;
 int PARERREN ;
 int REG (int ) ;
 int RI ;
 int RRDYEN ;
 int RTSDEN ;
 int RTSEN ;
 int RXDMUXSEL ;
 int RXDSEN ;
 int SETREG (struct uart_bas*,int ,int) ;
 int TCEN ;
 int TRDYEN ;
 int TXMPTYEN ;
 int UCR1 ;
 int UCR2 ;
 int UCR3 ;
 int UCR4 ;
 int USR1 ;
 int USR2 ;
 int WKEN ;
 int imx_uart_bus_getsig (struct uart_softc*) ;
 int imx_uart_init (struct uart_bas*,int,int,int,int ) ;

__attribute__((used)) static int
imx_uart_bus_attach(struct uart_softc *sc)
{
 struct uart_bas *bas;
 struct uart_devinfo *di;

 bas = &sc->sc_bas;
 if (sc->sc_sysdev != ((void*)0)) {
  di = sc->sc_sysdev;
  imx_uart_init(bas, di->baudrate, di->databits, di->stopbits,
      di->parity);
 } else {
  imx_uart_init(bas, 115200, 8, 1, 0);
 }

 (void)imx_uart_bus_getsig(sc);


 SETREG(bas, REG(USR1), 0xffff);
 SETREG(bas, REG(USR2), 0xffff);

 DIS(bas, UCR4, DREN);
 ENA(bas, UCR1, RRDYEN);
 DIS(bas, UCR1, IDEN);
 DIS(bas, UCR3, RXDSEN);
 ENA(bas, UCR2, ATEN);
 DIS(bas, UCR1, TXMPTYEN);
 DIS(bas, UCR1, TRDYEN);
 DIS(bas, UCR4, TCEN);
 DIS(bas, UCR4, OREN);
 ENA(bas, UCR4, BKEN);
 DIS(bas, UCR4, WKEN);
 DIS(bas, UCR1, ADEN);
 DIS(bas, UCR3, ACIEN);
 DIS(bas, UCR2, ESCI);
 DIS(bas, UCR4, ENIRI);
 DIS(bas, UCR3, AIRINTEN);
 DIS(bas, UCR3, AWAKEN);
 DIS(bas, UCR3, FRAERREN);
 DIS(bas, UCR3, PARERREN);
 DIS(bas, UCR1, RTSDEN);
 DIS(bas, UCR2, RTSEN);
 DIS(bas, UCR3, DTREN);
 DIS(bas, UCR3, RI);
 DIS(bas, UCR3, DCD);
 DIS(bas, UCR3, DTRDEN);
 ENA(bas, UCR2, IRTS);
 ENA(bas, UCR3, RXDMUXSEL);

 return (0);
}
