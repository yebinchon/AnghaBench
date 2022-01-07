
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct ath_softc {int sc_ah; } ;


 int ATH_DEBUG_BTCOEX ;
 int DPRINTF (struct ath_softc*,int ,char*,...) ;
 int HAL_MCI_STATE_SEND_WLAN_CHANNELS ;
 int HAL_MCI_STATE_SEND_WLAN_COEX_VERSION ;
 int HAL_MCI_STATE_SET_BT_COEX_VERSION ;


 int MCI_GPM_COEX_B_MAJOR_VERSION ;
 int MCI_GPM_COEX_B_MINOR_VERSION ;
 int MCI_GPM_COEX_B_WLAN_BITMAP ;



 int ath_hal_btcoex_mci_state (int ,int ,int*) ;

__attribute__((used)) static void
ath_btcoex_mci_coex_msg(struct ath_softc *sc, uint8_t opcode,
    uint8_t *rx_payload)
{
 uint32_t version;
 uint8_t major;
 uint8_t minor;
 uint32_t seq_num;

 switch (opcode) {
 case 129:
  DPRINTF(sc, ATH_DEBUG_BTCOEX,
      "(MCI) Recv GPM COEX Version Query.\n");
  version = ath_hal_btcoex_mci_state(sc->sc_ah,
      HAL_MCI_STATE_SEND_WLAN_COEX_VERSION, ((void*)0));
  break;

 case 128:
  DPRINTF(sc, ATH_DEBUG_BTCOEX,
      "(MCI) Recv GPM COEX Version Response.\n");
  major = *(rx_payload + MCI_GPM_COEX_B_MAJOR_VERSION);
  minor = *(rx_payload + MCI_GPM_COEX_B_MINOR_VERSION);
  DPRINTF(sc, ATH_DEBUG_BTCOEX,
      "(MCI) BT Coex version: %d.%d\n", major, minor);
  version = (major << 8) + minor;
  version = ath_hal_btcoex_mci_state(sc->sc_ah,
      HAL_MCI_STATE_SET_BT_COEX_VERSION, &version);
  break;

 case 130:
  DPRINTF(sc, ATH_DEBUG_BTCOEX,
      "(MCI) Recv GPM COEX Status Query = 0x%02x.\n",
      *(rx_payload + MCI_GPM_COEX_B_WLAN_BITMAP));
  ath_hal_btcoex_mci_state(sc->sc_ah,
      HAL_MCI_STATE_SEND_WLAN_CHANNELS, ((void*)0));
  break;

 case 132:




  DPRINTF(sc, ATH_DEBUG_BTCOEX,
      "(MCI) TODO: Recv GPM COEX BT_Profile_Info.\n");
  break;

 case 131:
  seq_num = *((uint32_t *)(rx_payload + 12));
  DPRINTF(sc, ATH_DEBUG_BTCOEX,
      "(MCI) Recv GPM COEX BT_Status_Update: SEQ=%d\n",
      seq_num);
  break;

 default:
  DPRINTF(sc, ATH_DEBUG_BTCOEX,
      "(MCI) Unknown GPM COEX message = 0x%02x\n", opcode);
  break;
 }
}
