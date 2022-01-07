
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bce_softc {int bce_phy_addr; int bce_phy_flags; int bce_flags; int bce_dev; } ;


 int BCE_CHIP_BOND_ID (struct bce_softc*) ;
 int BCE_CHIP_BOND_ID_SERDES_BIT ;
 scalar_t__ BCE_CHIP_NUM (struct bce_softc*) ;
 scalar_t__ BCE_CHIP_NUM_5706 ;
 scalar_t__ BCE_CHIP_NUM_5708 ;
 scalar_t__ BCE_CHIP_NUM_5709 ;
 int BCE_INFO_LOAD ;
 int BCE_INFO_PHY ;
 int BCE_MISC_DUAL_MEDIA_CTRL ;
 scalar_t__ BCE_MISC_DUAL_MEDIA_CTRL_BOND_ID ;
 scalar_t__ BCE_MISC_DUAL_MEDIA_CTRL_BOND_ID_C ;
 scalar_t__ BCE_MISC_DUAL_MEDIA_CTRL_BOND_ID_S ;
 scalar_t__ BCE_MISC_DUAL_MEDIA_CTRL_PHY_CTRL ;
 scalar_t__ BCE_MISC_DUAL_MEDIA_CTRL_PHY_CTRL_STRAP ;
 scalar_t__ BCE_MISC_DUAL_MEDIA_CTRL_STRAP_OVERRIDE ;
 int BCE_NO_WOL_FLAG ;
 int BCE_PHY_2_5G_CAPABLE_FLAG ;
 int BCE_PHY_CRC_FIX_FLAG ;
 int BCE_PHY_IEEE_CLAUSE_45_FLAG ;
 int BCE_PHY_SERDES_FLAG ;
 int BCE_SHARED_HW_CFG_CONFIG ;
 scalar_t__ BCE_SHARED_HW_CFG_PHY_2_5G ;
 int BCE_VERBOSE_PHY ;
 int DBENTER (int ) ;
 int DBEXIT (int ) ;
 int DBPRINT (struct bce_softc*,int,char*,...) ;
 scalar_t__ REG_RD (struct bce_softc*,int ) ;
 scalar_t__ bce_shmem_rd (struct bce_softc*,int ) ;
 scalar_t__ pci_get_function (int ) ;

__attribute__((used)) static void
bce_get_media(struct bce_softc *sc)
{
 u32 val;

 DBENTER(BCE_VERBOSE_PHY);


 sc->bce_phy_addr = 1;

 if (BCE_CHIP_NUM(sc) == BCE_CHIP_NUM_5709) {
   u32 val = REG_RD(sc, BCE_MISC_DUAL_MEDIA_CTRL);
  u32 bond_id = val & BCE_MISC_DUAL_MEDIA_CTRL_BOND_ID;
  u32 strap;





  if (bond_id == BCE_MISC_DUAL_MEDIA_CTRL_BOND_ID_C) {
   DBPRINT(sc, BCE_INFO_LOAD, "5709 bonded "
       "for copper.\n");
   goto bce_get_media_exit;
  } else if (bond_id == BCE_MISC_DUAL_MEDIA_CTRL_BOND_ID_S) {
   DBPRINT(sc, BCE_INFO_LOAD, "5709 bonded "
       "for dual media.\n");
   sc->bce_phy_flags |= BCE_PHY_SERDES_FLAG;
   goto bce_get_media_exit;
  }

  if (val & BCE_MISC_DUAL_MEDIA_CTRL_STRAP_OVERRIDE)
   strap = (val &
       BCE_MISC_DUAL_MEDIA_CTRL_PHY_CTRL) >> 21;
  else
   strap = (val &
       BCE_MISC_DUAL_MEDIA_CTRL_PHY_CTRL_STRAP) >> 8;

  if (pci_get_function(sc->bce_dev) == 0) {
   switch (strap) {
   case 0x4:
   case 0x5:
   case 0x6:
    DBPRINT(sc, BCE_INFO_LOAD,
        "BCM5709 s/w configured for SerDes.\n");
    sc->bce_phy_flags |= BCE_PHY_SERDES_FLAG;
    break;
   default:
    DBPRINT(sc, BCE_INFO_LOAD,
        "BCM5709 s/w configured for Copper.\n");
    break;
   }
  } else {
   switch (strap) {
   case 0x1:
   case 0x2:
   case 0x4:
    DBPRINT(sc, BCE_INFO_LOAD,
        "BCM5709 s/w configured for SerDes.\n");
    sc->bce_phy_flags |= BCE_PHY_SERDES_FLAG;
    break;
   default:
    DBPRINT(sc, BCE_INFO_LOAD,
        "BCM5709 s/w configured for Copper.\n");
    break;
   }
  }

 } else if (BCE_CHIP_BOND_ID(sc) & BCE_CHIP_BOND_ID_SERDES_BIT)
  sc->bce_phy_flags |= BCE_PHY_SERDES_FLAG;

 if (sc->bce_phy_flags & BCE_PHY_SERDES_FLAG) {

  sc->bce_flags |= BCE_NO_WOL_FLAG;

  if (BCE_CHIP_NUM(sc) == BCE_CHIP_NUM_5709)
   sc->bce_phy_flags |= BCE_PHY_IEEE_CLAUSE_45_FLAG;

  if (BCE_CHIP_NUM(sc) != BCE_CHIP_NUM_5706) {

   sc->bce_phy_addr = 2;

   val = bce_shmem_rd(sc, BCE_SHARED_HW_CFG_CONFIG);
   if (val & BCE_SHARED_HW_CFG_PHY_2_5G) {
    sc->bce_phy_flags |=
        BCE_PHY_2_5G_CAPABLE_FLAG;
    DBPRINT(sc, BCE_INFO_LOAD, "Found 2.5Gb "
        "capable adapter\n");
   }
  }
 } else if ((BCE_CHIP_NUM(sc) == BCE_CHIP_NUM_5706) ||
     (BCE_CHIP_NUM(sc) == BCE_CHIP_NUM_5708))
  sc->bce_phy_flags |= BCE_PHY_CRC_FIX_FLAG;

bce_get_media_exit:
 DBPRINT(sc, (BCE_INFO_LOAD | BCE_INFO_PHY),
  "Using PHY address %d.\n", sc->bce_phy_addr);

 DBEXIT(BCE_VERBOSE_PHY);
}
