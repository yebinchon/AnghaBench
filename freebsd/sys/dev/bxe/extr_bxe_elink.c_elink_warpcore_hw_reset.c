
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elink_phy {int dummy; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int MISC_REG_LCPLL_E40_PWRDWN ;
 int MISC_REG_LCPLL_E40_RESETB_ANA ;
 int MISC_REG_LCPLL_E40_RESETB_DIG ;
 int MISC_REG_WC0_RESET ;
 int REG_WR (struct bxe_softc*,int ,int) ;
 int elink_warpcore_power_module (struct elink_params*,int ) ;

__attribute__((used)) static void elink_warpcore_hw_reset(struct elink_phy *phy,
        struct elink_params *params)
{
 struct bxe_softc *sc = params->sc;
 elink_warpcore_power_module(params, 0);

 REG_WR(sc, MISC_REG_WC0_RESET, 0x0c0e);


 REG_WR(sc, MISC_REG_LCPLL_E40_PWRDWN, 1);
 REG_WR(sc, MISC_REG_LCPLL_E40_RESETB_ANA, 0);
 REG_WR(sc, MISC_REG_LCPLL_E40_RESETB_DIG, 0);
}
