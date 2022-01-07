
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct uart_class {int dummy; } ;
struct ofw_compat_data {scalar_t__ ocd_data; } ;
struct TYPE_3__ {struct uart_class* sc_class; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct jz4780_uart_softc {TYPE_2__ ns8250_base; int clk_baud; int clk_mod; } ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ bootverbose ;
 int clk_enable (int ) ;
 int clk_get_by_ofw_name (int ,int ,char*,int *) ;
 int clk_get_freq (int ,int*) ;
 int compat_data ;
 struct jz4780_uart_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int jz4780_uart_get_shift (int ) ;
 struct ofw_compat_data* ofw_bus_search_compatible (int ,int ) ;
 int ofw_bus_status_okay (int ) ;
 int uart_bus_probe (int ,int,int ,int,int ,int ,int ) ;

__attribute__((used)) static int
jz4780_uart_probe(device_t dev)
{
 struct jz4780_uart_softc *sc;
 uint64_t freq;
 int shift;
 int rv;
 const struct ofw_compat_data *cd;

 sc = device_get_softc(dev);
 if (!ofw_bus_status_okay(dev))
  return (ENXIO);
 cd = ofw_bus_search_compatible(dev, compat_data);
 if (cd->ocd_data == 0)
  return (ENXIO);


 rv = clk_get_by_ofw_name(dev, 0, "module", &sc->clk_mod);
 if (rv != 0) {
  device_printf(dev, "Cannot get UART clock: %d\n", rv);
  return (ENXIO);
 }
 rv = clk_enable(sc->clk_mod);
 if (rv != 0) {
  device_printf(dev, "Cannot enable UART clock: %d\n", rv);
  return (ENXIO);
 }
 rv = clk_get_by_ofw_name(dev, 0, "baud", &sc->clk_baud);
 if (rv != 0) {
  device_printf(dev, "Cannot get UART clock: %d\n", rv);
  return (ENXIO);
 }
 rv = clk_enable(sc->clk_baud);
 if (rv != 0) {
  device_printf(dev, "Cannot enable UART clock: %d\n", rv);
  return (ENXIO);
 }
 rv = clk_get_freq(sc->clk_baud, &freq);
 if (rv != 0) {
  device_printf(dev, "Cannot determine UART clock frequency: %d\n", rv);
  return (ENXIO);
 }

 if (bootverbose)
  device_printf(dev, "got UART clock: %lld\n", freq);
 sc->ns8250_base.base.sc_class = (struct uart_class *)cd->ocd_data;
 shift = jz4780_uart_get_shift(dev);
 return (uart_bus_probe(dev, shift, 0, (int)freq, 0, 0, 0));
}
