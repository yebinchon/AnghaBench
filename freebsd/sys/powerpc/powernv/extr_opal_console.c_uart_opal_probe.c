
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_opal_softc {int node; } ;
typedef int device_t ;


 int device_set_desc (int ,char*) ;
 int ofw_bus_get_node (int ) ;
 int uart_opal_probe_node (struct uart_opal_softc*) ;

__attribute__((used)) static int
uart_opal_probe(device_t dev)
{
 struct uart_opal_softc sc;
 int err;

 sc.node = ofw_bus_get_node(dev);
 err = uart_opal_probe_node(&sc);
 if (err != 0)
  return (err);

 device_set_desc(dev, "OPAL Serial Port");

 return (err);
}
