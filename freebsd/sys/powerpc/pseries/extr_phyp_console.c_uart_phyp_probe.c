
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_phyp_softc {int node; } ;
typedef int device_t ;


 int ENXIO ;
 int device_set_desc (int ,char*) ;
 char* ofw_bus_get_name (int ) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 int uart_phyp_probe_node (struct uart_phyp_softc*) ;

__attribute__((used)) static int
uart_phyp_probe(device_t dev)
{
 const char *name;
 struct uart_phyp_softc sc;
 int err;

 name = ofw_bus_get_name(dev);
 if (name == ((void*)0) || strcmp(name, "vty") != 0)
  return (ENXIO);

 sc.node = ofw_bus_get_node(dev);
 err = uart_phyp_probe_node(&sc);
 if (err != 0)
  return (err);

 device_set_desc(dev, "POWER Hypervisor Virtual Serial Port");

 return (err);
}
