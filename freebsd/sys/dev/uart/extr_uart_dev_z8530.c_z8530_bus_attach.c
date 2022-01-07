
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z8530_softc {int tpc; int txidle; } ;
struct uart_bas {int dummy; } ;
struct uart_softc {struct uart_devinfo* sc_sysdev; struct uart_bas sc_bas; } ;
struct uart_devinfo {int parity; int stopbits; int databits; int baudrate; } ;


 int IC_BRK ;
 int IC_CTS ;
 int IC_DCD ;
 int IDT_RIA ;
 int IDT_TIE ;
 int IDT_XIE ;
 int MIC_MIE ;
 int MIC_NV ;
 int TPC_DTR ;
 int TPC_RTS ;
 int UART_PARITY_NONE ;
 int WR_IC ;
 int WR_IDT ;
 int WR_IV ;
 int WR_MIC ;
 int WR_TPC ;
 int uart_barrier (struct uart_bas*) ;
 int uart_setmreg (struct uart_bas*,int ,int) ;
 int z8530_bus_getsig (struct uart_softc*) ;
 int z8530_param (struct uart_bas*,int ,int ,int ,int ,int*) ;
 int z8530_setup (struct uart_bas*,int,int,int,int ) ;

__attribute__((used)) static int
z8530_bus_attach(struct uart_softc *sc)
{
 struct z8530_softc *z8530 = (struct z8530_softc*)sc;
 struct uart_bas *bas;
 struct uart_devinfo *di;

 bas = &sc->sc_bas;
 if (sc->sc_sysdev != ((void*)0)) {
  di = sc->sc_sysdev;
  z8530->tpc = TPC_DTR|TPC_RTS;
  z8530_param(bas, di->baudrate, di->databits, di->stopbits,
      di->parity, &z8530->tpc);
 } else {
  z8530->tpc = z8530_setup(bas, 9600, 8, 1, UART_PARITY_NONE);
  z8530->tpc &= ~(TPC_DTR|TPC_RTS);
 }
 z8530->txidle = 1;

 (void)z8530_bus_getsig(sc);

 uart_setmreg(bas, WR_IC, IC_BRK | IC_CTS | IC_DCD);
 uart_barrier(bas);
 uart_setmreg(bas, WR_IDT, IDT_XIE | IDT_TIE | IDT_RIA);
 uart_barrier(bas);
 uart_setmreg(bas, WR_IV, 0);
 uart_barrier(bas);
 uart_setmreg(bas, WR_TPC, z8530->tpc);
 uart_barrier(bas);
 uart_setmreg(bas, WR_MIC, MIC_NV | MIC_MIE);
 uart_barrier(bas);
 return (0);
}
