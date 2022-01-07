
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct elink_phy {int dummy; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int CL22_RD_OVER_CL45 (struct bxe_softc*,struct elink_phy*,int ,int ,int*) ;
 int CL22_WR_OVER_CL45 (struct bxe_softc*,struct elink_phy*,int ,int ,int ) ;
 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int ELINK_DEBUG_P1 (struct bxe_softc*,char*,int) ;
 int MDIO_CL73_IEEEB0_CL73_AN_CONTROL ;
 int MDIO_CL73_IEEEB0_CL73_AN_CONTROL_AN_EN ;
 int MDIO_CL73_USERB0_CL73_USTAT1 ;
 int MDIO_CL73_USERB0_CL73_USTAT1_AN_GOOD_CHECK_BAM37 ;
 int MDIO_CL73_USERB0_CL73_USTAT1_LINK_STATUS_CHECK ;
 int MDIO_REG_BANK_CL73_IEEEB0 ;
 int MDIO_REG_BANK_CL73_USERB0 ;
 int MDIO_REG_BANK_REMOTE_PHY ;
 int MDIO_REG_BANK_RX0 ;
 int MDIO_REMOTE_PHY_MISC_RX_STATUS ;
 int MDIO_REMOTE_PHY_MISC_RX_STATUS_CL37_FSM_RECEIVED_BRCM_OUI_MSG ;
 int MDIO_REMOTE_PHY_MISC_RX_STATUS_CL37_FSM_RECEIVED_OVER1G_MSG ;
 int MDIO_RX0_RX_STATUS ;
 int MDIO_RX0_RX_STATUS_SIGDET ;
 int elink_restart_autoneg (struct elink_phy*,struct elink_params*,int ) ;

__attribute__((used)) static void elink_check_fallback_to_cl37(struct elink_phy *phy,
      struct elink_params *params)
{
 struct bxe_softc *sc = params->sc;
 uint16_t rx_status, ustat_val, cl37_fsm_received;
 ELINK_DEBUG_P0(sc, "elink_check_fallback_to_cl37\n");

 CL22_RD_OVER_CL45(sc, phy,
     MDIO_REG_BANK_RX0,
     MDIO_RX0_RX_STATUS,
     &rx_status);
 if ((rx_status & MDIO_RX0_RX_STATUS_SIGDET) !=
     (MDIO_RX0_RX_STATUS_SIGDET)) {
  ELINK_DEBUG_P1(sc, "Signal is not detected. Restoring CL73."
        "rx_status(0x80b0) = 0x%x\n", rx_status);
  CL22_WR_OVER_CL45(sc, phy,
      MDIO_REG_BANK_CL73_IEEEB0,
      MDIO_CL73_IEEEB0_CL73_AN_CONTROL,
      MDIO_CL73_IEEEB0_CL73_AN_CONTROL_AN_EN);
  return;
 }

 CL22_RD_OVER_CL45(sc, phy,
     MDIO_REG_BANK_CL73_USERB0,
     MDIO_CL73_USERB0_CL73_USTAT1,
     &ustat_val);
 if ((ustat_val &
      (MDIO_CL73_USERB0_CL73_USTAT1_LINK_STATUS_CHECK |
       MDIO_CL73_USERB0_CL73_USTAT1_AN_GOOD_CHECK_BAM37)) !=
     (MDIO_CL73_USERB0_CL73_USTAT1_LINK_STATUS_CHECK |
       MDIO_CL73_USERB0_CL73_USTAT1_AN_GOOD_CHECK_BAM37)) {
  ELINK_DEBUG_P1(sc, "CL73 state-machine is not stable. "
        "ustat_val(0x8371) = 0x%x\n", ustat_val);
  return;
 }



 CL22_RD_OVER_CL45(sc, phy,
     MDIO_REG_BANK_REMOTE_PHY,
     MDIO_REMOTE_PHY_MISC_RX_STATUS,
     &cl37_fsm_received);
 if ((cl37_fsm_received &
      (MDIO_REMOTE_PHY_MISC_RX_STATUS_CL37_FSM_RECEIVED_OVER1G_MSG |
      MDIO_REMOTE_PHY_MISC_RX_STATUS_CL37_FSM_RECEIVED_BRCM_OUI_MSG)) !=
     (MDIO_REMOTE_PHY_MISC_RX_STATUS_CL37_FSM_RECEIVED_OVER1G_MSG |
       MDIO_REMOTE_PHY_MISC_RX_STATUS_CL37_FSM_RECEIVED_BRCM_OUI_MSG)) {
  ELINK_DEBUG_P1(sc, "No CL37 FSM were received. "
        "misc_rx_status(0x8330) = 0x%x\n",
    cl37_fsm_received);
  return;
 }







 CL22_WR_OVER_CL45(sc, phy,
     MDIO_REG_BANK_CL73_IEEEB0,
     MDIO_CL73_IEEEB0_CL73_AN_CONTROL,
     0);

 elink_restart_autoneg(phy, params, 0);
 ELINK_DEBUG_P0(sc, "Disabling CL73, and restarting CL37 autoneg\n");
}
