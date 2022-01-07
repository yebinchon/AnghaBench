
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mtk_usb_phy_softc {int socid; int * res; int sr_coef; int u2_base; int fm_base; int dev; } ;
typedef int phandle_t ;
typedef int device_t ;


 int DELAY (int ) ;
 int ENXIO ;
 int MT7621_FM_FEG_BASE ;
 int MT7621_SR_COEF ;
 int MT7621_U2_BASE ;
 int MT7628_FM_FEG_BASE ;
 int MT7628_SR_COEF ;
 int MT7628_U2_BASE ;



 scalar_t__ OF_hasprop (int ,char*) ;
 int RESET_ASSERT_DELAY ;
 int RESET_DEASSERT_DELAY ;
 int RF_ACTIVE ;
 int SYSCFG1_USB_HOST_MODE ;
 int SYSCTL_SYSCFG1 ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 struct mtk_usb_phy_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int fdt_clock_enable_all (int ) ;
 int fdt_reset_assert_all (int ) ;
 int fdt_reset_deassert_all (int ) ;
 int mtk_sysctl_get (int ) ;
 int mtk_sysctl_set (int ,int ) ;
 int mtk_usb_phy_mt7621_init (int ) ;
 int mtk_usb_phy_mt7628_init (int ) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
mtk_usb_phy_attach(device_t dev)
{
 struct mtk_usb_phy_softc * sc = device_get_softc(dev);
 phandle_t node;
 uint32_t val;
 int rid;

 sc->dev = dev;


 node = ofw_bus_get_node(dev);



 val = mtk_sysctl_get(SYSCTL_SYSCFG1);
 if (OF_hasprop(node, "mtk,usb-device"))
  val &= ~SYSCFG1_USB_HOST_MODE;
 else
  val |= SYSCFG1_USB_HOST_MODE;
 mtk_sysctl_set(SYSCTL_SYSCFG1, val);


 if (OF_hasprop(node, "clocks"))
  fdt_clock_enable_all(dev);


 if (OF_hasprop(node, "resets")) {
  fdt_reset_assert_all(dev);
  DELAY(RESET_ASSERT_DELAY);
  fdt_reset_deassert_all(dev);
  DELAY(RESET_DEASSERT_DELAY);
 }


 if (OF_hasprop(node, "reg")) {
  rid = 0;
  sc->res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
      RF_ACTIVE);
  if (sc->res == ((void*)0)) {
   device_printf(dev, "could not map memory\n");
   return (ENXIO);
  }
 } else {
  sc->res = ((void*)0);
 }


 switch (sc->socid) {
 case 129:
 case 128:
  if (sc->res == ((void*)0))
   return (ENXIO);
  sc->fm_base = MT7628_FM_FEG_BASE;
  sc->u2_base = MT7628_U2_BASE;
  sc->sr_coef = MT7628_SR_COEF;
  mtk_usb_phy_mt7628_init(dev);
  break;
 case 130:
  if (sc->res == ((void*)0))
   return (ENXIO);
  sc->fm_base = MT7621_FM_FEG_BASE;
  sc->u2_base = MT7621_U2_BASE;
  sc->sr_coef = MT7621_SR_COEF;
  mtk_usb_phy_mt7621_init(dev);
  break;
 }


 if (sc->res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->res);

 return (0);
}
