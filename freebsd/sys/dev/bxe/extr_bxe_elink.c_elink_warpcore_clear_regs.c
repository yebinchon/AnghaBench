
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct elink_reg_set {int member_2; int val; scalar_t__ reg; int const devad; int member_1; int const member_0; } ;
struct elink_phy {int dummy; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 size_t ARRAY_SIZE (struct elink_reg_set*) ;
 int MDIO_WC_REG_RX66_CONTROL ;




 scalar_t__ MDIO_WC_REG_TX0_TX_DRIVER ;

 int elink_cl45_read_or_write (struct bxe_softc*,struct elink_phy*,int const,int ,int) ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int const,scalar_t__,int) ;
 size_t elink_get_warpcore_lane (struct elink_phy*,struct elink_params*) ;

__attribute__((used)) static void elink_warpcore_clear_regs(struct elink_phy *phy,
          struct elink_params *params,
          uint16_t lane)
{
 struct bxe_softc *sc = params->sc;
 uint16_t i;
 static struct elink_reg_set wc_regs[] = {
  {140, 139, 0},
  {138, 135, 0x014a},
  {138, 134, 0x0800},
  {138, 136, 0x8008},
  {138, 132,
   0x0195},
  {138, 131,
   0x0007},
  {138, 130,
   0x0002},
  {138, 129, 0x6000},
  {138, 128, 0x0000},
  {138, 133, 0x2040},
  {138, 137, 0x0140}
 };

 elink_cl45_read_or_write(sc, phy, 138,
     MDIO_WC_REG_RX66_CONTROL, (3<<13));

 for (i = 0; i < ARRAY_SIZE(wc_regs); i++)
  elink_cl45_write(sc, phy, wc_regs[i].devad, wc_regs[i].reg,
     wc_regs[i].val);

 lane = elink_get_warpcore_lane(phy, params);
 elink_cl45_write(sc, phy, 138,
    MDIO_WC_REG_TX0_TX_DRIVER + 0x10*lane, 0x0990);

}
