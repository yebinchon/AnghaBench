
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int caps; } ;
struct dwmmc_softc {int max_hz; int fifo_depth; int num_slots; scalar_t__ bus_hz; int dev; int * hwreset; scalar_t__ ciu; scalar_t__ biu; int vqmmc; int vmmc; TYPE_1__ host; } ;
typedef int phandle_t ;
typedef int pcell_t ;


 int ENODEV ;
 int ENOENT ;
 int ENXIO ;
 int MMC_CAP_4_BIT_DATA ;
 int MMC_CAP_8_BIT_DATA ;
 scalar_t__ OF_getencprop (int,char*,int*,int) ;
 int OF_getproplen (int,char*) ;
 int clk_enable (scalar_t__) ;
 int clk_get_by_ofw_name (int ,int ,char*,scalar_t__*) ;
 int clk_get_freq (scalar_t__,scalar_t__*) ;
 int clk_set_freq (scalar_t__,int,int ) ;
 int device_printf (int ,char*,...) ;
 int hwreset_assert (int *) ;
 int hwreset_deassert (int *) ;
 int hwreset_get_by_ofw_name (int ,int ,char*,int **) ;
 int ofw_bus_get_node (int ) ;
 int regulator_get_by_ofw_property (int ,int ,char*,int *) ;

__attribute__((used)) static int
parse_fdt(struct dwmmc_softc *sc)
{
 pcell_t dts_value[3];
 phandle_t node;
 uint32_t bus_hz = 0, bus_width;
 int len;




 if ((node = ofw_bus_get_node(sc->dev)) == -1)
  return (ENXIO);


 if (OF_getencprop(node, "bus-width", &bus_width, sizeof(uint32_t)) <= 0)
  bus_width = 4;
 if (bus_width >= 4)
  sc->host.caps |= MMC_CAP_4_BIT_DATA;
 if (bus_width >= 8)
  sc->host.caps |= MMC_CAP_8_BIT_DATA;


 if (OF_getencprop(node, "max-frequency", &sc->max_hz, sizeof(uint32_t)) <= 0)
  sc->max_hz = 200000000;


 if ((len = OF_getproplen(node, "fifo-depth")) > 0) {
  OF_getencprop(node, "fifo-depth", dts_value, len);
  sc->fifo_depth = dts_value[0];
 }


 sc->num_slots = 1;
 if ((len = OF_getproplen(node, "num-slots")) > 0) {
  device_printf(sc->dev, "num-slots property is deprecated\n");
  OF_getencprop(node, "num-slots", dts_value, len);
  sc->num_slots = dts_value[0];
 }


 if ((len = OF_getproplen(node, "clock-frequency")) > 0) {
  OF_getencprop(node, "clock-frequency", dts_value, len);
  bus_hz = dts_value[0];
 }
 if (sc->bus_hz == 0) {
  device_printf(sc->dev, "No bus speed provided\n");
  goto fail;
 }

 return (0);

fail:
 return (ENXIO);
}
