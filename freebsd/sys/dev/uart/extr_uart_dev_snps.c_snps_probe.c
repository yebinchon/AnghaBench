
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct uart_class {int dummy; } ;
struct TYPE_4__ {struct uart_class* sc_class; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct snps_softc {int reset; int * apb_pclk; int * baudclk; TYPE_2__ ns8250; } ;
typedef int shift ;
typedef int phandle_t ;
typedef int iowidth ;
typedef int hwreset_t ;
typedef int device_t ;
typedef int clock ;
typedef int * clk_t ;
struct TYPE_6__ {scalar_t__ ocd_data; } ;


 int ENXIO ;
 scalar_t__ OF_getencprop (int ,char*,scalar_t__*,int) ;
 int UART_F_BUSY_DETECT ;
 scalar_t__ bootverbose ;
 int clk_enable (int *) ;
 int clk_get_freq (int *,scalar_t__*) ;
 int compat_data ;
 struct snps_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int hwreset_deassert (int ) ;
 scalar_t__ hwreset_get_by_ofw_idx (int ,int ,int ,int *) ;
 int ofw_bus_get_node (int ) ;
 TYPE_3__* ofw_bus_search_compatible (int ,int ) ;
 int ofw_bus_status_okay (int ) ;
 scalar_t__ snps_get_clocks (int ,int **,int **) ;
 int uart_bus_probe (int ,int,int,int,int ,int ,int ) ;

__attribute__((used)) static int
snps_probe(device_t dev)
{
 struct snps_softc *sc;
 struct uart_class *uart_class;
 phandle_t node;
 uint32_t shift, iowidth, clock;
 uint64_t freq;
 int error;





 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 uart_class = (struct uart_class *)ofw_bus_search_compatible(dev,
     compat_data)->ocd_data;
 if (uart_class == ((void*)0))
  return (ENXIO);

 freq = 0;
 sc = device_get_softc(dev);
 sc->ns8250.base.sc_class = uart_class;

 node = ofw_bus_get_node(dev);
 if (OF_getencprop(node, "reg-shift", &shift, sizeof(shift)) <= 0)
  shift = 0;
 if (OF_getencprop(node, "reg-io-width", &iowidth, sizeof(iowidth)) <= 0)
  iowidth = 1;
 if (OF_getencprop(node, "clock-frequency", &clock, sizeof(clock)) <= 0)
  clock = 0;
 if (bootverbose && clock == 0)
  device_printf(dev, "could not determine frequency\n");

 error = uart_bus_probe(dev, (int)shift, (int)iowidth, (int)clock, 0, 0, UART_F_BUSY_DETECT);
 if (error != 0)
  return (error);
 return (0);
}
