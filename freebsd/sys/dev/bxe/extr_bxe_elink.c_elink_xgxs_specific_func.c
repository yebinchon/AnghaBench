
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct elink_phy {int def_md_devad; } ;
struct elink_params {int port; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;



 int NIG_REG_XGXS0_CTRL_MD_DEVAD ;
 int NIG_REG_XGXS0_CTRL_MD_ST ;
 int REG_WR (struct bxe_softc*,int ,int ) ;

__attribute__((used)) static void elink_xgxs_specific_func(struct elink_phy *phy,
         struct elink_params *params,
         uint32_t action)
{
 struct bxe_softc *sc = params->sc;
 switch (action) {
 case 128:

  REG_WR(sc, NIG_REG_XGXS0_CTRL_MD_ST + params->port*0x18, 0);
  REG_WR(sc, NIG_REG_XGXS0_CTRL_MD_DEVAD + params->port*0x18,
         phy->def_md_devad);
  break;
 }
}
