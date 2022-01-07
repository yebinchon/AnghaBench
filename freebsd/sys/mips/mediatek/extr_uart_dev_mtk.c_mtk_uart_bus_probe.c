
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {int sc_dev; int sc_bas; } ;


 int device_set_desc (int ,char*) ;
 int mtk_uart_probe (int *) ;

__attribute__((used)) static int
mtk_uart_bus_probe(struct uart_softc *sc)
{
 int error;

 error = mtk_uart_probe(&sc->sc_bas);
 if (error)
  return (error);

 device_set_desc(sc->sc_dev, "MTK UART Controller");

 return (0);
}
