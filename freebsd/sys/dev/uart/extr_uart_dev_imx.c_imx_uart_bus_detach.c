
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {int sc_bas; } ;


 int REG (int ) ;
 int SETREG (int *,int ,int ) ;
 int UCR4 ;

__attribute__((used)) static int
imx_uart_bus_detach(struct uart_softc *sc)
{

 SETREG(&sc->sc_bas, REG(UCR4), 0);

 return (0);
}
