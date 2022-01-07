
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct elink_phy {int type; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int ELINK_DEBUG_P1 (struct bxe_softc*,char*,int ) ;



 int elink_8727_power_module (struct bxe_softc*,struct elink_phy*,int ) ;
 int elink_warpcore_power_module (struct elink_params*,int ) ;

__attribute__((used)) static void elink_power_sfp_module(struct elink_params *params,
       struct elink_phy *phy,
       uint8_t power)
{
 struct bxe_softc *sc = params->sc;
 ELINK_DEBUG_P1(sc, "Setting SFP+ power to %x\n", power);

 switch (phy->type) {
 case 129:
 case 130:
  elink_8727_power_module(params->sc, phy, power);
  break;
 case 128:
  elink_warpcore_power_module(params, power);
  break;
 default:
  break;
 }
}
