
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct resource {int dummy; } ;
struct TYPE_3__ {int sc_phy_bits; int sc_phy_type; } ;
struct TYPE_4__ {TYPE_1__ sc_otg; } ;
struct jz4780_dwc_otg_softc {scalar_t__ phy_clk; scalar_t__ otg_clk; TYPE_2__ base; } ;
typedef int device_t ;


 int DWC_OTG_PHY_UTMI ;
 int JZ_DWC2_GUSBCFG ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_read_4 (struct resource*,int ) ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 int bus_write_4 (struct resource*,int ,int) ;
 int clk_release (scalar_t__) ;
 struct jz4780_dwc_otg_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int dwc_otg_attach (int ) ;
 int jz4780_dwc_otg_clk_enable (int ) ;
 int jz4780_otg_enable () ;

__attribute__((used)) static int
jz4780_dwc_otg_attach(device_t dev)
{
 struct jz4780_dwc_otg_softc *sc;
 struct resource *res;
 int err, rid;

 sc = device_get_softc(dev);

 err = jz4780_dwc_otg_clk_enable(dev);
 if (err != 0)
  goto fail;

 err = jz4780_otg_enable();
 if (err != 0) {
  device_printf(dev, "CGU failed to enable OTG\n");
  goto fail;
 }


 res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
 if (res != ((void*)0)) {
  uint32_t reg;

  reg = bus_read_4(res, JZ_DWC2_GUSBCFG);
  reg |= 0xc;
  bus_write_4(res, JZ_DWC2_GUSBCFG, reg);
  bus_release_resource(dev, SYS_RES_MEMORY, rid, res);
 }

 sc->base.sc_otg.sc_phy_type = DWC_OTG_PHY_UTMI;
 sc->base.sc_otg.sc_phy_bits = 16;

 err = dwc_otg_attach(dev);
 if (err != 0)
  goto fail;

 return (0);
fail:
 if (sc->otg_clk)
  clk_release(sc->otg_clk);
 if (sc->phy_clk)
  clk_release(sc->phy_clk);
 return (err);
}
