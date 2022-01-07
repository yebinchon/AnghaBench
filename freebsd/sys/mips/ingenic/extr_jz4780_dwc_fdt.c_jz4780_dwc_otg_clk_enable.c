
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4780_dwc_otg_softc {int phy_clk; int otg_clk; } ;
typedef int device_t ;


 int clk_enable (int ) ;
 int clk_get_by_ofw_name (int ,int ,char*,int *) ;
 int clk_set_freq (int ,int,int ) ;
 struct jz4780_dwc_otg_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,char*) ;

__attribute__((used)) static int
jz4780_dwc_otg_clk_enable(device_t dev)
{
 struct jz4780_dwc_otg_softc *sc;
 int err;

 sc = device_get_softc(dev);


 err = clk_get_by_ofw_name(dev, 0, "otg_phy", &sc->phy_clk);
 if (err != 0) {
  device_printf(dev, "unable to lookup %s clock\n", "otg_phy");
  return (err);
 }
 err = clk_set_freq(sc->phy_clk, 48000000, 0);
 if (err != 0) {
  device_printf(dev, "unable to set %s clock to 48 kHZ\n",
      "otg_phy");
  return (err);
 }
 err = clk_enable(sc->phy_clk);
 if (err != 0) {
  device_printf(dev, "unable to enable %s clock\n", "otg_phy");
  return (err);
 }


 err = clk_get_by_ofw_name(dev, 0, "otg1", &sc->otg_clk);
 if (err != 0) {
  device_printf(dev, "unable to lookup %s clock\n", "otg1");
  return (err);
 }
 err = clk_enable(sc->phy_clk);
 if (err != 0) {
  device_printf(dev, "unable to enable %s clock\n", "otg1");
  return (err);
 }

 return (0);
}
