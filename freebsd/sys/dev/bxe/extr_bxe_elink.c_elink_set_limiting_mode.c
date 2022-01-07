
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct elink_phy {int type; } ;
struct elink_params {int sc; } ;






 int elink_8726_set_limiting_mode (int ,struct elink_phy*,int ) ;
 int elink_8727_set_limiting_mode (int ,struct elink_phy*,int ) ;
 int elink_warpcore_set_limiting_mode (struct elink_params*,struct elink_phy*,int ) ;

__attribute__((used)) static void elink_set_limiting_mode(struct elink_params *params,
        struct elink_phy *phy,
        uint16_t edc_mode)
{
 switch (phy->type) {
 case 130:
  elink_8726_set_limiting_mode(params->sc, phy, edc_mode);
  break;
 case 129:
 case 131:
  elink_8727_set_limiting_mode(params->sc, phy, edc_mode);
  break;
 case 128:
  elink_warpcore_set_limiting_mode(params, phy, edc_mode);
  break;
 }
}
