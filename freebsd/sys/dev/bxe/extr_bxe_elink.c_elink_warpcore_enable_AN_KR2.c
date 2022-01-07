
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct elink_vars {int dummy; } ;
struct elink_reg_set {int member_2; int val; int reg; int devad; int member_1; int const member_0; } ;
struct elink_phy {int dummy; } ;
struct elink_params {int link_attr_sync; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 size_t ARRAY_SIZE (struct elink_reg_set*) ;
 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int LINK_ATTR_SYNC_KR2_ENABLE ;

 int MDIO_WC_REG_CL49_USERB0_CTRL ;
 int elink_cl45_read_or_write (struct bxe_softc*,struct elink_phy*,int const,int ,int) ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,int ,int ) ;
 int elink_update_link_attr (struct elink_params*,int ) ;

__attribute__((used)) static void elink_warpcore_enable_AN_KR2(struct elink_phy *phy,
      struct elink_params *params,
      struct elink_vars *vars)
{
 struct bxe_softc *sc = params->sc;
 uint16_t i;
 static struct elink_reg_set reg_set[] = {

  {143, 136, 0xa157},
  {143, 134, 0xcbe2},
  {143, 135, 0x7537},
  {143, 133, 0xa157},
  {143, 137, 0xcbe2},
  {143, 138, 0x7537},

  {143, 139, 0x000a},
  {143, 141, 0x6400},
  {143, 140, 0x0620},
  {143, 142, 0x0157},
  {143, 130, 0x6464},
  {143, 129, 0x3150},
  {143, 128, 0x3150},
  {143, 132, 0x0157},
  {143, 131, 0x0620}
 };
 ELINK_DEBUG_P0(sc, "Enabling 20G-KR2\n");

 elink_cl45_read_or_write(sc, phy, 143,
     MDIO_WC_REG_CL49_USERB0_CTRL, (3<<6));

 for (i = 0; i < ARRAY_SIZE(reg_set); i++)
  elink_cl45_write(sc, phy, reg_set[i].devad, reg_set[i].reg,
     reg_set[i].val);


 params->link_attr_sync |= LINK_ATTR_SYNC_KR2_ENABLE;
 elink_update_link_attr(params, params->link_attr_sync);
}
