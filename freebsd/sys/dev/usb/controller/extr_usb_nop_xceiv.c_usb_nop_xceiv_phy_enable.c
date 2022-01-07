
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_nop_xceiv_softc {scalar_t__ clk_freq; scalar_t__ vcc_supply; int clk; } ;
struct phynode {int dummy; } ;
typedef int device_t ;


 int CLK_SET_ROUND_ANY ;
 int ENXIO ;
 int ERANGE ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int clk_set_freq (int ,scalar_t__,int ) ;
 struct usb_nop_xceiv_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,char*) ;
 int phynode_get_device (struct phynode*) ;
 intptr_t phynode_get_id (struct phynode*) ;
 int regulator_disable (scalar_t__) ;
 int regulator_enable (scalar_t__) ;

__attribute__((used)) static int
usb_nop_xceiv_phy_enable(struct phynode *phynode, bool enable)
{
 struct usb_nop_xceiv_softc *sc;
 device_t dev;
 intptr_t phy;
 int error;

 dev = phynode_get_device(phynode);
 phy = phynode_get_id(phynode);
 sc = device_get_softc(dev);

 if (phy != 0)
  return (ERANGE);


 if (sc->clk_freq != 0) {
  if (enable) {
   error = clk_set_freq(sc->clk, sc->clk_freq,
     CLK_SET_ROUND_ANY);
   if (error != 0) {
    device_printf(dev, "Cannot set clock to %dMhz\n",
      sc->clk_freq);
    goto fail;
   }

   error = clk_enable(sc->clk);
  } else
   error = clk_disable(sc->clk);

  if (error != 0) {
   device_printf(dev, "Cannot %sable the clock\n",
       enable ? "En" : "Dis");
   goto fail;
  }
 }
 if (sc->vcc_supply) {
  if (enable)
   error = regulator_enable(sc->vcc_supply);
  else
   error = regulator_disable(sc->vcc_supply);
  if (error != 0) {
   device_printf(dev, "Cannot %sable the regulator\n",
       enable ? "En" : "Dis");
   goto fail;
  }
 }

 return (0);

fail:
 return (ENXIO);
}
