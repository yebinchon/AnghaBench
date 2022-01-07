
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {scalar_t__ rclk; } ;
struct uart_softc {int sc_rxfifosz; int sc_txfifosz; struct uart_devinfo* sc_sysdev; struct uart_bas sc_bas; } ;
struct uart_mtk_softc {int ier_mask; } ;
struct uart_devinfo {int baudrate; int databits; int stopbits; int parity; } ;


 int UART_FCR_FIFOEN ;
 int UART_FCR_REG ;
 int UART_FCR_RXTGR_1 ;
 int UART_FCR_TXTGR_1 ;
 int UART_IER_EDSSI ;
 int UART_IER_ELSI ;
 int UART_IER_ERBFI ;
 int UART_IER_REG ;
 scalar_t__ mtk_soc_get_uartclk () ;
 int mtk_uart_bus_getsig (struct uart_softc*) ;
 int mtk_uart_init (struct uart_bas*,int,int,int,int ) ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static int
mtk_uart_bus_attach(struct uart_softc *sc)
{
 struct uart_bas *bas;
 struct uart_devinfo *di;
 struct uart_mtk_softc *usc = (struct uart_mtk_softc *)sc;

 bas = &sc->sc_bas;

 if (!bas->rclk) {
  bas->rclk = mtk_soc_get_uartclk();
 }

 if (sc->sc_sysdev != ((void*)0)) {
  di = sc->sc_sysdev;
  mtk_uart_init(bas, di->baudrate, di->databits, di->stopbits,
      di->parity);
 } else {
  mtk_uart_init(bas, 57600, 8, 1, 0);
 }

 sc->sc_rxfifosz = 16;
 sc->sc_txfifosz = 16;

 (void)mtk_uart_bus_getsig(sc);


 uart_setreg(bas, UART_FCR_REG,
     uart_getreg(bas, UART_FCR_REG) |
     UART_FCR_FIFOEN | UART_FCR_TXTGR_1 | UART_FCR_RXTGR_1);
 uart_barrier(bas);

 usc->ier_mask = 0xf0;
 uart_setreg(bas, UART_IER_REG,
     UART_IER_EDSSI | UART_IER_ELSI | UART_IER_ERBFI);
 uart_barrier(bas);

 return (0);
}
