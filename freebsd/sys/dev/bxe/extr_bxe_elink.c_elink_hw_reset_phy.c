
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
struct elink_params {int port; TYPE_1__* phy; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;
struct TYPE_3__ {int (* hw_reset ) (TYPE_1__*,struct elink_params*) ;} ;


 size_t ELINK_INT_PHY ;
 size_t ELINK_MAX_PHYS ;
 int ELINK_NIG_MASK_MI_INT ;
 int ELINK_NIG_MASK_SERDES0_LINK_STATUS ;
 int ELINK_NIG_MASK_XGXS0_LINK10G ;
 int ELINK_NIG_MASK_XGXS0_LINK_STATUS ;
 scalar_t__ NIG_REG_MASK_INTERRUPT_PORT0 ;
 int elink_bits_dis (struct bxe_softc*,scalar_t__,int) ;
 int elink_update_mng (struct elink_params*,int ) ;
 TYPE_1__ phy_null ;
 int stub1 (TYPE_1__*,struct elink_params*) ;

void elink_hw_reset_phy(struct elink_params *params)
{
 uint8_t phy_index;
 struct bxe_softc *sc = params->sc;
 elink_update_mng(params, 0);
 elink_bits_dis(sc, NIG_REG_MASK_INTERRUPT_PORT0 + params->port*4,
         (ELINK_NIG_MASK_XGXS0_LINK_STATUS |
   ELINK_NIG_MASK_XGXS0_LINK10G |
   ELINK_NIG_MASK_SERDES0_LINK_STATUS |
   ELINK_NIG_MASK_MI_INT));

 for (phy_index = ELINK_INT_PHY; phy_index < ELINK_MAX_PHYS;
       phy_index++) {
  if (params->phy[phy_index].hw_reset) {
   params->phy[phy_index].hw_reset(
    &params->phy[phy_index],
    params);
   params->phy[phy_index] = phy_null;
  }
 }
}
