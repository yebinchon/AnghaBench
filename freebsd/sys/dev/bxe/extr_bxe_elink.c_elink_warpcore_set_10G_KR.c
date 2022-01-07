
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct elink_vars {int dummy; } ;
struct elink_reg_set {int member_2; int val; int const reg; int const devad; int member_1; int const member_0; } ;
struct elink_phy {int dummy; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 size_t ARRAY_SIZE (struct elink_reg_set*) ;
 int CL22_WR_OVER_CL45 (struct bxe_softc*,struct elink_phy*,int ,int ,int ) ;
 int MDIO_AER_BLOCK_AER_REG ;


 int MDIO_REG_BANK_AER_BLOCK ;





 int const MDIO_WC_REG_IEEE0BLK_AUTONEGNP ;


 int MDIO_WC_REG_RX66_CONTROL ;

 int const MDIO_WC_REG_SERDESDIGITAL_MISC2 ;
 int const MDIO_WC_REG_TX66_CONTROL ;
 int const MDIO_WC_REG_XGXSBLK1_LANECTRL0 ;
 int const MDIO_WC_REG_XGXSBLK1_LANECTRL1 ;
 int elink_cl45_read (struct bxe_softc*,struct elink_phy*,int const,int const,size_t*) ;
 int elink_cl45_read_or_write (struct bxe_softc*,struct elink_phy*,int const,int ,int) ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int const,int const,int) ;
 size_t elink_get_warpcore_lane (struct elink_phy*,struct elink_params*) ;
 int elink_set_aer_mmd (struct elink_params*,struct elink_phy*) ;

__attribute__((used)) static void elink_warpcore_set_10G_KR(struct elink_phy *phy,
          struct elink_params *params,
          struct elink_vars *vars)
{
 struct bxe_softc *sc = params->sc;
 uint16_t val16, i, lane;
 static struct elink_reg_set reg_set[] = {

  {135, 128, 0x7},
  {135, 133,
   0x3f00},
  {137, 134, 0},
  {137, 130, 0x0},
  {135, 132, 0x1},
  {135, 131, 0xa},

  {136, 129, 0x2}
 };

 for (i = 0; i < ARRAY_SIZE(reg_set); i++)
  elink_cl45_write(sc, phy, reg_set[i].devad, reg_set[i].reg,
     reg_set[i].val);

 lane = elink_get_warpcore_lane(phy, params);

 CL22_WR_OVER_CL45(sc, phy, MDIO_REG_BANK_AER_BLOCK,
     MDIO_AER_BLOCK_AER_REG, 0);

 elink_cl45_read(sc, phy, 135,
   MDIO_WC_REG_XGXSBLK1_LANECTRL0, &val16);
 val16 &= ~(0x0011 << lane);
 elink_cl45_write(sc, phy, 135,
    MDIO_WC_REG_XGXSBLK1_LANECTRL0, val16);

 elink_cl45_read(sc, phy, 135,
   MDIO_WC_REG_XGXSBLK1_LANECTRL1, &val16);
 val16 |= (0x0303 << (lane << 1));
 elink_cl45_write(sc, phy, 135,
    MDIO_WC_REG_XGXSBLK1_LANECTRL1, val16);

 elink_set_aer_mmd(params, phy);

 elink_cl45_write(sc, phy, 136,
    130, 0x2040);

 elink_cl45_write(sc, phy, 136,
    MDIO_WC_REG_IEEE0BLK_AUTONEGNP, 0xB);


 elink_cl45_write(sc, phy, 135,
    MDIO_WC_REG_SERDESDIGITAL_MISC2, 0x30);


 elink_cl45_write(sc, phy, 135,
    MDIO_WC_REG_TX66_CONTROL, 0x9);


 elink_cl45_read_or_write(sc, phy, 135,
     MDIO_WC_REG_RX66_CONTROL, 0xF9);


 elink_cl45_write(sc, phy, 135,
    130, 0x4000);
 elink_cl45_write(sc, phy, 135,
    130, 0x0);

}
