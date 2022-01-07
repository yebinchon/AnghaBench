
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ phandle_t ;
struct TYPE_7__ {int swid; int sw_addr; int phy_base; int num_ports; int sx; scalar_t__ node; int dev; } ;
typedef TYPE_1__ e6000sw_softc_t ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int E6000SW_LOCK (TYPE_1__*) ;
 int E6000SW_UNLOCK (TYPE_1__*) ;
 int ENXIO ;






 int OF_finddevice (char*) ;
 scalar_t__ OF_getencprop (scalar_t__,char*,int*,int) ;
 int REG_PORT (TYPE_1__*,int ) ;
 int SWITCH_ID ;
 scalar_t__ bootverbose ;
 TYPE_1__* device_get_softc (int ) ;
 int device_printf (int ,char*,scalar_t__) ;
 int device_set_desc (int ,char const*) ;
 int e6000sw_readreg (TYPE_1__*,int ,int ) ;
 scalar_t__ ofw_bus_find_compatible (int ,char*) ;
 int sx_destroy (int *) ;
 int sx_init (int *,char*) ;

__attribute__((used)) static int
e6000sw_probe(device_t dev)
{
 e6000sw_softc_t *sc;
 const char *description;
 phandle_t switch_node;

 sc = device_get_softc(dev);
 switch_node = ofw_bus_find_compatible(OF_finddevice("/"),
     "marvell,mv88e6085");
 if (switch_node == 0) {
  switch_node = ofw_bus_find_compatible(OF_finddevice("/"),
      "marvell,mv88e6190");

  if (switch_node == 0)
   return (ENXIO);





  sc->swid = 130;
 }

 if (bootverbose)
  device_printf(dev, "Found switch_node: 0x%x\n", switch_node);

 sc->dev = dev;
 sc->node = switch_node;

 if (OF_getencprop(sc->node, "reg", &sc->sw_addr,
     sizeof(sc->sw_addr)) < 0)
  return (ENXIO);
 if (sc->sw_addr < 0 || sc->sw_addr > 32)
  return (ENXIO);





 sx_init(&sc->sx, "e6000sw_tmp");
 E6000SW_LOCK(sc);
 sc->swid = e6000sw_readreg(sc, REG_PORT(sc, 0), SWITCH_ID) & 0xfff0;
 E6000SW_UNLOCK(sc);
 sx_destroy(&sc->sx);

 switch (sc->swid) {
 case 133:
  description = "Marvell 88E6141";
  sc->phy_base = 0x10;
  sc->num_ports = 6;
  break;
 case 129:
  description = "Marvell 88E6341";
  sc->phy_base = 0x10;
  sc->num_ports = 6;
  break;
 case 128:
  description = "Marvell 88E6352";
  sc->num_ports = 7;
  break;
 case 132:
  description = "Marvell 88E6172";
  sc->num_ports = 7;
  break;
 case 131:
  description = "Marvell 88E6176";
  sc->num_ports = 7;
  break;
 case 130:
  description = "Marvell 88E6190";
  sc->num_ports = 11;
  break;
 default:
  device_printf(dev, "Unrecognized device, id 0x%x.\n", sc->swid);
  return (ENXIO);
 }

 device_set_desc(dev, description);

 return (BUS_PROBE_DEFAULT);
}
