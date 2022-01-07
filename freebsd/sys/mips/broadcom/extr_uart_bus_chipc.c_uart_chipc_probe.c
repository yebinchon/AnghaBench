
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct uart_softc {int * sc_class; } ;
typedef int device_t ;


 int bcm_get_platform () ;
 int bcm_get_uart_rclk (int ) ;
 struct uart_softc* device_get_softc (int ) ;
 int uart_bus_probe (int ,int ,int ,int ,int ,int ,int ) ;
 int uart_ns8250_class ;

__attribute__((used)) static int
uart_chipc_probe(device_t dev)
{
 struct uart_softc *sc;
 u_int rclk;

 sc = device_get_softc(dev);
 sc->sc_class = &uart_ns8250_class;

 rclk = bcm_get_uart_rclk(bcm_get_platform());
 return (uart_bus_probe(dev, 0, 0, rclk, 0, 0, 0));
}
