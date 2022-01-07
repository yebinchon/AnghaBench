
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct ath_softc {int sc_ah; } ;


 int ATH_DEBUG_BTCOEX ;
 int DPRINTF (struct ath_softc*,int ,char*,...) ;
 int HAL_MCI_STATE_BT ;
 int HAL_MCI_STATE_SET_BT_CAL_START ;
 int MCI_BT_AWAKE ;
 int MCI_BT_CAL ;



 int MCI_GPM_SET_CAL_TYPE (int *,int ) ;
 int MCI_GPM_WLAN_CAL_DONE ;
 int ath_btcoex_mci_bt_cal_do (struct ath_softc*,int,int) ;
 int ath_btcoex_mci_send_gpm (struct ath_softc*,int *) ;
 int ath_hal_btcoex_mci_state (int ,int ,int *) ;

__attribute__((used)) static void
ath_btcoex_mci_cal_msg(struct ath_softc *sc, uint8_t opcode,
    uint8_t *rx_payload)
{
 uint32_t payload[4] = {0, 0, 0, 0};

 switch (opcode) {
 case 128:
  DPRINTF(sc, ATH_DEBUG_BTCOEX, "(MCI) receive BT_CAL_REQ\n");
  if (ath_hal_btcoex_mci_state(sc->sc_ah, HAL_MCI_STATE_BT,
      ((void*)0)) == MCI_BT_AWAKE) {
   ath_hal_btcoex_mci_state(sc->sc_ah,
       HAL_MCI_STATE_SET_BT_CAL_START, ((void*)0));
   ath_btcoex_mci_bt_cal_do(sc, 1000, 1000);
  } else {
   DPRINTF(sc, ATH_DEBUG_BTCOEX,
       "(MCI) State mismatches: %d\n",
       ath_hal_btcoex_mci_state(sc->sc_ah,
       HAL_MCI_STATE_BT, ((void*)0)));
  }
  break;
 case 130:
  DPRINTF(sc, ATH_DEBUG_BTCOEX, "(MCI) receive BT_CAL_DONE\n");
  if (ath_hal_btcoex_mci_state(sc->sc_ah, HAL_MCI_STATE_BT,
      ((void*)0)) == MCI_BT_CAL) {
   DPRINTF(sc, ATH_DEBUG_BTCOEX,
       "(MCI) ERROR ILLEGAL!\n");
  } else {
   DPRINTF(sc, ATH_DEBUG_BTCOEX,
       "(MCI) BT not in CAL state.\n");
  }
  break;
 case 129:
  DPRINTF(sc, ATH_DEBUG_BTCOEX, "(MCI) receive BT_CAL_GRANT\n");

  DPRINTF(sc, ATH_DEBUG_BTCOEX, "(MCI) Send WLAN_CAL_DONE\n");
  MCI_GPM_SET_CAL_TYPE(payload, MCI_GPM_WLAN_CAL_DONE);
  ath_btcoex_mci_send_gpm(sc, &payload[0]);
  break;
 default:
  DPRINTF(sc, ATH_DEBUG_BTCOEX,
      "(MCI) Unknown GPM CAL message.\n");
  break;
 }
}
