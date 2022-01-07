
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4780_ohci_softc {int clk; } ;
typedef int device_t ;


 int clk_enable (int ) ;
 int clk_get_by_ofw_index (int ,int ,int ,int *) ;
 int clk_set_freq (int ,int,int ) ;
 struct jz4780_ohci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
jz4780_ohci_clk_enable(device_t dev)
{
 struct jz4780_ohci_softc *sc;
 int err;

 sc = device_get_softc(dev);

 err = clk_get_by_ofw_index(dev, 0, 0, &sc->clk);
 if (err != 0) {
  device_printf(dev, "unable to lookup device clock\n");
  return (err);
 }
 err = clk_enable(sc->clk);
 if (err != 0) {
  device_printf(dev, "unable to enable device clock\n");
  return (err);
 }
 err = clk_set_freq(sc->clk, 48000000, 0);
 if (err != 0) {
  device_printf(dev, "unable to set device clock to 48 kHZ\n");
  return (err);
 }
 return (0);
}
