
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct elink_phy {int supported; int flags; int req_line_speed; } ;
struct elink_params {int loopback_mode; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int CL22_WR_OVER_CL45 (struct bxe_softc*,struct elink_phy*,int ,int ,int ) ;
 int ELINK_DEBUG_P2 (struct bxe_softc*,char*,int ,int ) ;
 int ELINK_FLAGS_WC_DUAL_MODE ;
 int ELINK_SPEED_10000 ;
 int ELINK_SUPPORTED_20000baseKR2_Full ;
 int MDIO_AER_BLOCK_AER_REG ;
 int MDIO_REG_BANK_AER_BLOCK ;
 int MDIO_WC_DEVAD ;
 int MDIO_WC_REG_COMBO_IEEE0_MIICTRL ;
 int MDIO_WC_REG_IEEE0BLK_MIICNTL ;
 int MDIO_WC_REG_XGXSBLK0_XGXSCONTROL ;
 int MDIO_WC_REG_XGXSBLK1_LANECTRL2 ;
 int elink_cl45_read (struct bxe_softc*,struct elink_phy*,int ,int ,int*) ;
 int elink_cl45_read_or_write (struct bxe_softc*,struct elink_phy*,int ,int ,int) ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,int ,int) ;
 int elink_get_warpcore_lane (struct elink_phy*,struct elink_params*) ;
 int elink_set_aer_mmd (struct elink_params*,struct elink_phy*) ;

__attribute__((used)) static void elink_set_warpcore_loopback(struct elink_phy *phy,
     struct elink_params *params)
{
 struct bxe_softc *sc = params->sc;
 uint16_t val16;
 uint32_t lane;
 ELINK_DEBUG_P2(sc, "Setting Warpcore loopback type %x, speed %d\n",
         params->loopback_mode, phy->req_line_speed);

 if (phy->req_line_speed < ELINK_SPEED_10000 ||
     phy->supported & ELINK_SUPPORTED_20000baseKR2_Full) {



  CL22_WR_OVER_CL45(sc, phy, MDIO_REG_BANK_AER_BLOCK,
      MDIO_AER_BLOCK_AER_REG, 0);

  elink_cl45_read_or_write(sc, phy, MDIO_WC_DEVAD,
      MDIO_WC_REG_XGXSBLK0_XGXSCONTROL,
      0x10);

  lane = elink_get_warpcore_lane(phy, params);
  elink_cl45_read(sc, phy, MDIO_WC_DEVAD,
    MDIO_WC_REG_XGXSBLK1_LANECTRL2, &val16);
  val16 |= (1<<lane);
  if (phy->flags & ELINK_FLAGS_WC_DUAL_MODE)
   val16 |= (2<<lane);
  elink_cl45_write(sc, phy, MDIO_WC_DEVAD,
     MDIO_WC_REG_XGXSBLK1_LANECTRL2,
     val16);


  elink_set_aer_mmd(params, phy);
 } else {

  elink_cl45_read_or_write(sc, phy, MDIO_WC_DEVAD,
      MDIO_WC_REG_COMBO_IEEE0_MIICTRL,
      0x4000);
  elink_cl45_read_or_write(sc, phy, MDIO_WC_DEVAD,
      MDIO_WC_REG_IEEE0BLK_MIICNTL, 0x1);
 }
}
