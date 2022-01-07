
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ sc_reg_shift; int * sc_mem_res; scalar_t__ sc_mem_rid; int sc_get_i2c_dev; int sc_dev; } ;
struct dwc_hdmi_fdt_softc {int clk_ahb; int clk_hdmi; TYPE_1__ base; scalar_t__ i2c_xref; } ;
typedef scalar_t__ phandle_t ;
typedef int i2c_xref ;
typedef int freq ;
typedef int device_t ;


 int CLK_SET_ROUND_DOWN ;
 int ENXIO ;
 int OF_getencprop (scalar_t__,char*,scalar_t__*,int) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 scalar_t__ clk_enable (int ) ;
 scalar_t__ clk_get_by_ofw_name (int ,int ,char*,int *) ;
 int clk_set_freq (int ,scalar_t__,int ) ;
 struct dwc_hdmi_fdt_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int dwc_hdmi_fdt_detach (int ) ;
 int dwc_hdmi_fdt_get_i2c_dev ;
 int dwc_hdmi_init (int ) ;
 scalar_t__ ofw_bus_get_node (int ) ;

__attribute__((used)) static int
dwc_hdmi_fdt_attach(device_t dev)
{
 struct dwc_hdmi_fdt_softc *sc;
 phandle_t node, i2c_xref;
 uint32_t freq;
 int err;

 sc = device_get_softc(dev);
 sc->base.sc_dev = dev;
 sc->base.sc_get_i2c_dev = dwc_hdmi_fdt_get_i2c_dev;
 err = 0;


 sc->base.sc_mem_rid = 0;
 sc->base.sc_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &sc->base.sc_mem_rid, RF_ACTIVE);
 if (sc->base.sc_mem_res == ((void*)0)) {
  device_printf(dev, "Cannot allocate memory resources\n");
  err = ENXIO;
  goto out;
 }

 node = ofw_bus_get_node(dev);
 if (OF_getencprop(node, "ddc", &i2c_xref, sizeof(i2c_xref)) == -1)
  sc->i2c_xref = 0;
 else
  sc->i2c_xref = i2c_xref;

 if (OF_getencprop(node, "reg-shift", &sc->base.sc_reg_shift,
     sizeof(sc->base.sc_reg_shift)) <= 0)
  sc->base.sc_reg_shift = 0;

 if (clk_get_by_ofw_name(dev, 0, "hdmi", &sc->clk_hdmi) != 0 ||
     clk_get_by_ofw_name(dev, 0, "ahb", &sc->clk_ahb) != 0) {
  device_printf(dev, "Cannot get clocks\n");
  err = ENXIO;
  goto out;
 }
 if (OF_getencprop(node, "clock-frequency", &freq, sizeof(freq)) > 0) {
  err = clk_set_freq(sc->clk_hdmi, freq, CLK_SET_ROUND_DOWN);
  if (err != 0) {
   device_printf(dev,
       "Cannot set HDMI clock frequency to %u Hz\n", freq);
   goto out;
  }
 } else
  device_printf(dev, "HDMI clock frequency not specified\n");
 if (clk_enable(sc->clk_hdmi) != 0) {
  device_printf(dev, "Cannot enable HDMI clock\n");
  err = ENXIO;
  goto out;
 }
 if (clk_enable(sc->clk_ahb) != 0) {
  device_printf(dev, "Cannot enable AHB clock\n");
  err = ENXIO;
  goto out;
 }

 return (dwc_hdmi_init(dev));

out:

 dwc_hdmi_fdt_detach(dev);

 return (err);
}
