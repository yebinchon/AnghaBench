
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct usb_nop_xceiv_softc {scalar_t__ clk_freq; int vcc_supply; int clk; int dev; } ;
struct phynode_init_def {int ofw_node; scalar_t__ id; } ;
struct phynode {int dummy; } ;
typedef int phandle_t ;
typedef int device_t ;


 int ENXIO ;
 int OF_device_register_xref (int ,int ) ;
 int OF_getencprop (int ,char*,scalar_t__*,int) ;
 int OF_xref_from_node (int ) ;
 int clk_get_by_ofw_name (int ,int ,char*,int *) ;
 struct usb_nop_xceiv_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int ofw_bus_get_node (int ) ;
 struct phynode* phynode_create (int ,int *,struct phynode_init_def*) ;
 int * phynode_register (struct phynode*) ;
 int regulator_get_by_ofw_property (int ,int ,char*,int *) ;
 int usb_nop_xceiv_phynode_class ;

__attribute__((used)) static int
usb_nop_xceiv_attach(device_t dev)
{
 struct usb_nop_xceiv_softc *sc;
 struct phynode *phynode;
 struct phynode_init_def phy_init;
 phandle_t node;
 int error;

 sc = device_get_softc(dev);
 sc->dev = dev;
 node = ofw_bus_get_node(dev);


 OF_getencprop(node, "clock-frequency", &sc->clk_freq, sizeof(uint32_t));

 error = clk_get_by_ofw_name(dev, node, "main_clk", &sc->clk);
 if (error != 0 && sc->clk_freq != 0) {
  device_printf(dev, "clock property is mandatory if clock-frequency is present\n");
  return (ENXIO);
 }

 regulator_get_by_ofw_property(dev, node, "vcc-supply", &sc->vcc_supply);

 phy_init.id = 0;
 phy_init.ofw_node = node;
 phynode = phynode_create(dev, &usb_nop_xceiv_phynode_class,
     &phy_init);
 if (phynode == ((void*)0)) {
  device_printf(dev, "failed to create USB NOP PHY\n");
  return (ENXIO);
 }
 if (phynode_register(phynode) == ((void*)0)) {
  device_printf(dev, "failed to create USB NOP PHY\n");
  return (ENXIO);
 }

 OF_device_register_xref(OF_xref_from_node(node), dev);

 return (0);
}
