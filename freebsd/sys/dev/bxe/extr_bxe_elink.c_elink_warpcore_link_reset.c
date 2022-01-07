
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct elink_phy {int flags; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int CL22_WR_OVER_CL45 (struct bxe_softc*,struct elink_phy*,int ,int ,int ) ;
 int ELINK_FLAGS_WC_DUAL_MODE ;
 int MDIO_AER_BLOCK_AER_REG ;
 int MDIO_REG_BANK_AER_BLOCK ;
 int MDIO_WC_DEVAD ;
 int MDIO_WC_REG_COMBO_IEEE0_MIICTRL ;
 int MDIO_WC_REG_IEEE0BLK_MIICNTL ;
 int MDIO_WC_REG_XGXSBLK0_XGXSCONTROL ;
 int MDIO_WC_REG_XGXSBLK1_LANECTRL0 ;
 int MDIO_WC_REG_XGXSBLK1_LANECTRL1 ;
 int MDIO_WC_REG_XGXSBLK1_LANECTRL2 ;
 int elink_cl45_read (struct bxe_softc*,struct elink_phy*,int ,int ,int*) ;
 int elink_cl45_read_and_write (struct bxe_softc*,struct elink_phy*,int ,int ,int) ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,int ,int) ;
 int elink_get_warpcore_lane (struct elink_phy*,struct elink_params*) ;
 int elink_set_aer_mmd (struct elink_params*,struct elink_phy*) ;
 int elink_set_mdio_emac_per_phy (struct bxe_softc*,struct elink_params*) ;
 int elink_sfp_e3_set_transmitter (struct elink_params*,struct elink_phy*,int ) ;
 int elink_warpcore_reset_lane (struct bxe_softc*,struct elink_phy*,int) ;

__attribute__((used)) static void elink_warpcore_link_reset(struct elink_phy *phy,
          struct elink_params *params)
{
 struct bxe_softc *sc = params->sc;
 uint16_t val16, lane;
 elink_sfp_e3_set_transmitter(params, phy, 0);
 elink_set_mdio_emac_per_phy(sc, params);
 elink_set_aer_mmd(params, phy);

 elink_warpcore_reset_lane(sc, phy, 1);



 elink_cl45_read_and_write(sc, phy, MDIO_WC_DEVAD,
      MDIO_WC_REG_COMBO_IEEE0_MIICTRL, 0xBFFF);

 elink_cl45_read_and_write(sc, phy, MDIO_WC_DEVAD,
      MDIO_WC_REG_IEEE0BLK_MIICNTL, 0xfffe);


 CL22_WR_OVER_CL45(sc, phy, MDIO_REG_BANK_AER_BLOCK,
     MDIO_AER_BLOCK_AER_REG, 0);

 elink_cl45_read_and_write(sc, phy, MDIO_WC_DEVAD,
      MDIO_WC_REG_XGXSBLK0_XGXSCONTROL,
      ~0x10);

 elink_cl45_read_and_write(sc, phy, MDIO_WC_DEVAD,
      MDIO_WC_REG_XGXSBLK1_LANECTRL2, 0xff00);
 lane = elink_get_warpcore_lane(phy, params);

 elink_cl45_read(sc, phy, MDIO_WC_DEVAD,
   MDIO_WC_REG_XGXSBLK1_LANECTRL0, &val16);
 val16 |= (0x11 << lane);
 if (phy->flags & ELINK_FLAGS_WC_DUAL_MODE)
  val16 |= (0x22 << lane);
 elink_cl45_write(sc, phy, MDIO_WC_DEVAD,
    MDIO_WC_REG_XGXSBLK1_LANECTRL0, val16);

 elink_cl45_read(sc, phy, MDIO_WC_DEVAD,
   MDIO_WC_REG_XGXSBLK1_LANECTRL1, &val16);
 val16 &= ~(0x0303 << (lane << 1));
 val16 |= (0x0101 << (lane << 1));
 if (phy->flags & ELINK_FLAGS_WC_DUAL_MODE) {
  val16 &= ~(0x0c0c << (lane << 1));
  val16 |= (0x0404 << (lane << 1));
 }

 elink_cl45_write(sc, phy, MDIO_WC_DEVAD,
    MDIO_WC_REG_XGXSBLK1_LANECTRL1, val16);

 elink_set_aer_mmd(params, phy);

}
