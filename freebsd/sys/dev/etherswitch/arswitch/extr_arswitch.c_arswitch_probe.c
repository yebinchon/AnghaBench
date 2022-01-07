
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct arswitch_softc {int page; int is_internal_switch; int chip_rev; int chip_ver; int mii_lo_first; int sc_switchtype; } ;
typedef int device_t ;
typedef int desc ;


 int AR8X16_MASK_CTRL_REV_MASK ;
 int AR8X16_MASK_CTRL_VER_MASK ;
 int AR8X16_MASK_CTRL_VER_SHIFT ;
 int AR8X16_REG_MASK_CTRL ;
 int AR8X16_SWITCH_AR7240 ;
 int AR8X16_SWITCH_AR8216 ;
 int AR8X16_SWITCH_AR8226 ;
 int AR8X16_SWITCH_AR8316 ;
 int AR8X16_SWITCH_AR8327 ;
 int AR8X16_SWITCH_AR9340 ;
 int ARSWITCH_DBG_ANY ;
 int BUS_PROBE_DEFAULT ;
 int DPRINTF (struct arswitch_softc*,int ,char*,char*,int) ;
 int ENXIO ;
 scalar_t__ ar7240_probe (int ) ;
 scalar_t__ ar9340_probe (int ) ;
 int arswitch_readreg (int ,int ) ;
 int bzero (struct arswitch_softc*,int) ;
 struct arswitch_softc* device_get_softc (int ) ;
 int device_set_desc_copy (int ,char*) ;
 int snprintf (char*,int,char*,char*,int,int) ;

__attribute__((used)) static int
arswitch_probe(device_t dev)
{
 struct arswitch_softc *sc;
 uint32_t id;
 char *chipname, desc[256];

 sc = device_get_softc(dev);
 bzero(sc, sizeof(*sc));
 sc->page = -1;


 if (ar7240_probe(dev) == 0) {
  chipname = "AR7240";
  sc->sc_switchtype = AR8X16_SWITCH_AR7240;
  sc->is_internal_switch = 1;
  id = 0;
  goto done;
 }


 if (ar9340_probe(dev) == 0) {
  chipname = "AR9340";
  sc->sc_switchtype = AR8X16_SWITCH_AR9340;
  sc->is_internal_switch = 1;
  id = 0;
  goto done;
 }


 id = arswitch_readreg(dev, AR8X16_REG_MASK_CTRL);
 sc->chip_rev = (id & AR8X16_MASK_CTRL_REV_MASK);
 sc->chip_ver = (id & AR8X16_MASK_CTRL_VER_MASK) > AR8X16_MASK_CTRL_VER_SHIFT;
 switch (id & (AR8X16_MASK_CTRL_VER_MASK | AR8X16_MASK_CTRL_REV_MASK)) {
 case 0x0101:
  chipname = "AR8216";
  sc->sc_switchtype = AR8X16_SWITCH_AR8216;
  break;
 case 0x0201:
  chipname = "AR8226";
  sc->sc_switchtype = AR8X16_SWITCH_AR8226;
  break;

 case 0x1000:
 case 0x1001:
  chipname = "AR8316";
  sc->sc_switchtype = AR8X16_SWITCH_AR8316;
  break;
 case 0x1202:
 case 0x1204:
  chipname = "AR8327";
  sc->sc_switchtype = AR8X16_SWITCH_AR8327;
  sc->mii_lo_first = 1;
  break;
 default:
  chipname = ((void*)0);
 }

done:

 DPRINTF(sc, ARSWITCH_DBG_ANY, "chipname=%s, id=%08x\n", chipname, id);
 if (chipname != ((void*)0)) {
  snprintf(desc, sizeof(desc),
      "Atheros %s Ethernet Switch (ver %d rev %d)",
      chipname,
      sc->chip_ver,
      sc->chip_rev);
  device_set_desc_copy(dev, desc);
  return (BUS_PROBE_DEFAULT);
 }
 return (ENXIO);
}
