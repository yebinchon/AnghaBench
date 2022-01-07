
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwmtx; struct uart_bas sc_bas; } ;


 int ATEN ;
 int ENA (struct uart_bas*,int ,int ) ;
 int RRDYEN ;
 int UCR1 ;
 int UCR2 ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static void
imx_uart_bus_ungrab(struct uart_softc *sc)
{
 struct uart_bas *bas = &sc->sc_bas;

 bas = &sc->sc_bas;
 uart_lock(sc->sc_hwmtx);
 ENA(bas, UCR1, RRDYEN);
 ENA(bas, UCR2, ATEN);
 uart_unlock(sc->sc_hwmtx);
}
