
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elink_vars {int check_kr2_recovery_cnt; } ;
struct elink_reg_set {int member_2; int val; int reg; int devad; int member_1; int const member_0; } ;
struct elink_phy {int dummy; } ;
struct elink_params {int link_attr_sync; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int ARRAY_SIZE (struct elink_reg_set*) ;
 int ELINK_CHECK_KR2_RECOVERY_CNT ;
 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int LINK_ATTR_SYNC_KR2_ENABLE ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,int ,int ) ;
 int elink_update_link_attr (struct elink_params*,int ) ;

__attribute__((used)) static void elink_disable_kr2(struct elink_params *params,
         struct elink_vars *vars,
         struct elink_phy *phy)
{
 struct bxe_softc *sc = params->sc;
 int i;
 static struct elink_reg_set reg_set[] = {

  {143, 136, 0x7690},
  {143, 134, 0xe647},
  {143, 135, 0xc4f0},
  {143, 133, 0x7690},
  {143, 137, 0xe647},
  {143, 138, 0xc4f0},
  {143, 139, 0x000c},
  {143, 141, 0x6000},
  {143, 140, 0x0000},
  {143, 142, 0x0002},
  {143, 130, 0x0000},
  {143, 129, 0x0af7},
  {143, 128, 0x0af7},
  {143, 132, 0x0002},
  {143, 131, 0x0000}
 };
 ELINK_DEBUG_P0(sc, "Disabling 20G-KR2\n");

 for (i = 0; i < ARRAY_SIZE(reg_set); i++)
  elink_cl45_write(sc, phy, reg_set[i].devad, reg_set[i].reg,
     reg_set[i].val);
 params->link_attr_sync &= ~LINK_ATTR_SYNC_KR2_ENABLE;
 elink_update_link_attr(params, params->link_attr_sync);

 vars->check_kr2_recovery_cnt = ELINK_CHECK_KR2_RECOVERY_CNT;
}
