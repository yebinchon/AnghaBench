
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct hwrm_port_phy_cfg_input {int flags; int tx_lpi_timer; int eee_link_speed_mask; } ;
struct bnxt_softc {int dummy; } ;
struct TYPE_2__ {int tx_lpi_timer; int advertised; scalar_t__ tx_lpi_enabled; } ;


 int HWRM_PORT_PHY_CFG_INPUT_FLAGS_EEE_DISABLE ;
 int HWRM_PORT_PHY_CFG_INPUT_FLAGS_EEE_ENABLE ;
 int HWRM_PORT_PHY_CFG_INPUT_FLAGS_EEE_TX_LPI ;
 int bnxt_get_fw_auto_link_speeds (int ) ;
 TYPE_1__* eee ;
 int htole16 (int ) ;
 int htole32 (int ) ;

__attribute__((used)) static void
bnxt_hwrm_set_eee(struct bnxt_softc *softc, struct hwrm_port_phy_cfg_input *req)
{

 bool eee_enabled = 0;

 if (eee_enabled) {
 } else {
  req->flags |=
      htole32(HWRM_PORT_PHY_CFG_INPUT_FLAGS_EEE_DISABLE);
 }
}
