
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_softc {int sc_ah; int sc_btcoex_mci; } ;
typedef scalar_t__ ATH_BT_COEX_EVENT ;


 scalar_t__ ATH_COEX_EVENT_BT_NOOP ;
 int ATH_DEBUG_BTCOEX ;
 int DPRINTF (struct ath_softc*,int ,char*) ;
 int HAL_MCI_STATE_ENABLE ;
 int HAL_MCI_STATE_NEED_FLUSH_BT_INFO ;
 int HAL_MCI_STATE_SEND_STATUS_QUERY ;
 scalar_t__ ath_hal_btcoex_mci_state (int ,int ,int *) ;

__attribute__((used)) static void
ath_btcoex_mci_event(struct ath_softc *sc, ATH_BT_COEX_EVENT nevent,
    void *param)
{

 if (! sc->sc_btcoex_mci)
  return;






 if (ath_hal_btcoex_mci_state(sc->sc_ah,
     HAL_MCI_STATE_NEED_FLUSH_BT_INFO, ((void*)0)) != 0) {
  uint32_t data = 0;

  if (ath_hal_btcoex_mci_state(sc->sc_ah,
      HAL_MCI_STATE_ENABLE, ((void*)0)) != 0) {
   DPRINTF(sc, ATH_DEBUG_BTCOEX,
       "(MCI) Flush BT profile\n");






   ath_hal_btcoex_mci_state(sc->sc_ah,
       HAL_MCI_STATE_NEED_FLUSH_BT_INFO, &data);
   ath_hal_btcoex_mci_state(sc->sc_ah,
       HAL_MCI_STATE_SEND_STATUS_QUERY, ((void*)0));
  }
 }
 if (nevent == ATH_COEX_EVENT_BT_NOOP) {
  DPRINTF(sc, ATH_DEBUG_BTCOEX, "(MCI) BT_NOOP\n");
  return;
 }
}
