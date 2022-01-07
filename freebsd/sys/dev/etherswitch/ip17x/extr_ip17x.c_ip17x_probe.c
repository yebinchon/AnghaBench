
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ip17x_softc {int miipoll; int sc_switchtype; } ;
typedef scalar_t__ phandle_t ;
typedef scalar_t__ pcell_t ;
typedef int device_t ;
typedef int cell ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int IP175D_ID_PHY ;
 int IP175D_ID_REG ;


 scalar_t__ IP17X_OUI ;
 int IP17X_SWITCH_IP175A ;
 int IP17X_SWITCH_IP175C ;
 int IP17X_SWITCH_IP175D ;
 int IP17X_SWITCH_IP178C ;
 scalar_t__ MDIO_READREG (int ,int,int ) ;
 scalar_t__ MII_MODEL (scalar_t__) ;
 scalar_t__ MII_OUI (scalar_t__,scalar_t__) ;
 int MII_PHYIDR1 ;
 int MII_PHYIDR2 ;
 int OF_finddevice (char*) ;
 scalar_t__ OF_getencprop (scalar_t__,char*,scalar_t__*,int) ;
 int device_get_name (int ) ;
 int device_get_parent (int ) ;
 struct ip17x_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,scalar_t__) ;
 int device_set_desc_copy (int ,char*) ;
 scalar_t__ fdt_find_compatible (int ,char*,int ) ;
 int resource_int_value (int ,int ,char*,int*) ;

__attribute__((used)) static int
ip17x_probe(device_t dev)
{
 struct ip17x_softc *sc;
 uint32_t oui, model, phy_id1, phy_id2;
 sc = device_get_softc(dev);


 phy_id1 = MDIO_READREG(device_get_parent(dev), 0, MII_PHYIDR1);
 phy_id2 = MDIO_READREG(device_get_parent(dev), 0, MII_PHYIDR2);

 oui = MII_OUI(phy_id1, phy_id2);
 model = MII_MODEL(phy_id2);

 if (oui != IP17X_OUI) {
  device_printf(dev,
      "Unsupported IC+ switch. Unknown OUI: %#x\n", oui);
  return (ENXIO);
 }

 switch (model) {
 case 129:
  sc->sc_switchtype = IP17X_SWITCH_IP175A;
  break;
 case 128:
  sc->sc_switchtype = IP17X_SWITCH_IP175C;
  break;
 default:
  device_printf(dev, "Unsupported IC+ switch model: %#x\n",
      model);
  return (ENXIO);
 }


 model = MDIO_READREG(device_get_parent(dev), IP175D_ID_PHY,
     IP175D_ID_REG);
 if (model == 0x175d)
  sc->sc_switchtype = IP17X_SWITCH_IP175D;
 else {

  model = MDIO_READREG(device_get_parent(dev), 5, MII_PHYIDR1);
  if (phy_id1 == model)
   sc->sc_switchtype = IP17X_SWITCH_IP178C;
 }

 sc->miipoll = 1;





 (void) resource_int_value(device_get_name(dev), device_get_unit(dev),
     "mii-poll", &sc->miipoll);

 device_set_desc_copy(dev, "IC+ IP17x switch driver");
 return (BUS_PROBE_DEFAULT);
}
