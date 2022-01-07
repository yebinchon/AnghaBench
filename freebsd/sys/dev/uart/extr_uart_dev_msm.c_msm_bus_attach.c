
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {scalar_t__ sc_hwoflow; scalar_t__ sc_hwiflow; struct uart_bas sc_bas; } ;
struct msm_uart_softc {int ier; } ;


 int UART_DM_IMR ;
 int UART_DM_IMR_ENABLED ;
 int uart_setreg (struct uart_bas*,int ,int ) ;

__attribute__((used)) static int
msm_bus_attach(struct uart_softc *sc)
{
 struct msm_uart_softc *u = (struct msm_uart_softc *)sc;
 struct uart_bas *bas = &sc->sc_bas;

 sc->sc_hwiflow = 0;
 sc->sc_hwoflow = 0;


 u->ier = UART_DM_IMR_ENABLED;


 uart_setreg(bas, UART_DM_IMR, u->ier);

 return (0);
}
