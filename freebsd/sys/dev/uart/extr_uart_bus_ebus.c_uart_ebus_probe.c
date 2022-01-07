
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {int * sc_class; } ;
struct uart_devinfo {int dummy; } ;
typedef int device_t ;


 int ENXIO ;
 int UART_DEV_KEYBOARD ;
 int device_disable (int ) ;
 struct uart_softc* device_get_softc (int ) ;
 char* ofw_bus_get_compat (int ) ;
 char* ofw_bus_get_name (int ) ;
 char const* sparc64_model ;
 int strcmp (char const*,char*) ;
 int uart_bus_probe (int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ uart_cpu_getdev (int ,struct uart_devinfo*) ;
 int uart_ns8250_class ;

__attribute__((used)) static int
uart_ebus_probe(device_t dev)
{
 const char *nm, *cmpt;
 struct uart_softc *sc;
 struct uart_devinfo dummy;

 sc = device_get_softc(dev);
 sc->sc_class = ((void*)0);

 nm = ofw_bus_get_name(dev);
 cmpt = ofw_bus_get_compat(dev);
 if (cmpt == ((void*)0))
  cmpt = "";
 if (!strcmp(nm, "lom-console") || !strcmp(nm, "su") ||
     !strcmp(nm, "su_pnp") || !strcmp(cmpt, "rsc-console") ||
     !strcmp(cmpt, "rsc-control") || !strcmp(cmpt, "su") ||
     !strcmp(cmpt, "su16550") || !strcmp(cmpt, "su16552")) {
  if ((!strcmp(sparc64_model, "SUNW,UltraAX-MP") ||
      !strcmp(sparc64_model, "SUNW,UltraSPARC-IIi-Engine")) &&
      uart_cpu_getdev(UART_DEV_KEYBOARD, &dummy)) {
    device_disable(dev);
    return (ENXIO);
  }
  sc->sc_class = &uart_ns8250_class;
  return (uart_bus_probe(dev, 0, 0, 0, 0, 0, 0));
 }

 return (ENXIO);
}
