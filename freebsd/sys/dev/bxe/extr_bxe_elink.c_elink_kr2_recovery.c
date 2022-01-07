
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elink_vars {int dummy; } ;
struct elink_phy {int dummy; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int elink_warpcore_enable_AN_KR2 (struct elink_phy*,struct elink_params*,struct elink_vars*) ;
 int elink_warpcore_restart_AN_KR (struct elink_phy*,struct elink_params*) ;

__attribute__((used)) static void elink_kr2_recovery(struct elink_params *params,
          struct elink_vars *vars,
          struct elink_phy *phy)
{
 struct bxe_softc *sc = params->sc;
 ELINK_DEBUG_P0(sc, "KR2 recovery\n");
 elink_warpcore_enable_AN_KR2(phy, params, vars);
 elink_warpcore_restart_AN_KR(phy, params);
}
