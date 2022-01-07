
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct iwm_vap {scalar_t__ is_uploaded; int * phy_ctxt; } ;
struct ieee80211com {int ic_vaps; } ;
struct iwm_softc {TYPE_1__* cfg; int * txq; int rxq; int sc_dev; int sc_flags; scalar_t__ sc_firmware_state; struct ieee80211com sc_ic; } ;
struct ieee80211vap {int dummy; } ;
struct TYPE_2__ {scalar_t__ device_family; } ;


 int DELAY (int) ;
 int IWM_APMG_CLK_DIS_REG ;
 int IWM_APMG_CLK_VAL_DMA_CLK_RQT ;
 int IWM_CLRBITS (struct iwm_softc*,int ,int ) ;
 int IWM_CSR_GP_CNTRL ;
 int IWM_CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ ;
 int IWM_CSR_RESET ;
 int IWM_CSR_RESET_REG_FLAG_SW_RESET ;
 scalar_t__ IWM_DEVICE_FAMILY_7000 ;
 int IWM_FH_TCSR_CHNL_NUM ;
 int IWM_FH_TCSR_CHNL_TX_CONFIG_REG (int) ;
 int IWM_FH_TSSR_TX_STATUS_REG ;
 int IWM_FH_TSSR_TX_STATUS_REG_MSK_CHNL_IDLE (int) ;
 int IWM_FLAG_TE_ACTIVE ;
 int IWM_FLAG_USE_ICT ;
 int IWM_READ (struct iwm_softc*,int ) ;
 int IWM_SCD_TXFACT ;
 int IWM_SETBITS (struct iwm_softc*,int ,int ) ;
 struct iwm_vap* IWM_VAP (struct ieee80211vap*) ;
 int IWM_WRITE (struct iwm_softc*,int ,int ) ;
 struct ieee80211vap* TAILQ_FIRST (int *) ;
 int device_printf (int ,char*,int ) ;
 int iwm_apm_stop (struct iwm_softc*) ;
 int iwm_check_rfkill (struct iwm_softc*) ;
 int iwm_disable_interrupts (struct iwm_softc*) ;
 int iwm_enable_rfkill_int (struct iwm_softc*) ;
 scalar_t__ iwm_nic_lock (struct iwm_softc*) ;
 int iwm_nic_unlock (struct iwm_softc*) ;
 int iwm_pcie_rx_stop (struct iwm_softc*) ;
 int iwm_poll_bit (struct iwm_softc*,int ,int ,int ,int) ;
 int iwm_prepare_card_hw (struct iwm_softc*) ;
 int iwm_reset_rx_ring (struct iwm_softc*,int *) ;
 int iwm_reset_tx_ring (struct iwm_softc*,int *) ;
 int iwm_write_prph (struct iwm_softc*,int ,int ) ;
 int nitems (int *) ;

__attribute__((used)) static void
iwm_stop_device(struct iwm_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct ieee80211vap *vap = TAILQ_FIRST(&ic->ic_vaps);
 int chnl, qid;
 uint32_t mask = 0;


 iwm_disable_interrupts(sc);






 if (vap) {
  struct iwm_vap *iv = IWM_VAP(vap);
  iv->phy_ctxt = ((void*)0);
  iv->is_uploaded = 0;
 }
 sc->sc_firmware_state = 0;
 sc->sc_flags &= ~IWM_FLAG_TE_ACTIVE;


 sc->sc_flags &= ~IWM_FLAG_USE_ICT;



 if (iwm_nic_lock(sc)) {
  iwm_write_prph(sc, IWM_SCD_TXFACT, 0);


  for (chnl = 0; chnl < IWM_FH_TCSR_CHNL_NUM; chnl++) {
   IWM_WRITE(sc,
       IWM_FH_TCSR_CHNL_TX_CONFIG_REG(chnl), 0);
   mask |= IWM_FH_TSSR_TX_STATUS_REG_MSK_CHNL_IDLE(chnl);
  }


  if (!iwm_poll_bit(sc, IWM_FH_TSSR_TX_STATUS_REG, mask, mask,
      5000)) {
   device_printf(sc->sc_dev,
       "Failing on timeout while stopping DMA channel: [0x%08x]\n",
       IWM_READ(sc, IWM_FH_TSSR_TX_STATUS_REG));
  }
  iwm_nic_unlock(sc);
 }
 iwm_pcie_rx_stop(sc);


 iwm_reset_rx_ring(sc, &sc->rxq);


 for (qid = 0; qid < nitems(sc->txq); qid++)
  iwm_reset_tx_ring(sc, &sc->txq[qid]);

 if (sc->cfg->device_family == IWM_DEVICE_FAMILY_7000) {

  if (iwm_nic_lock(sc)) {
   iwm_write_prph(sc, IWM_APMG_CLK_DIS_REG,
       IWM_APMG_CLK_VAL_DMA_CLK_RQT);
   iwm_nic_unlock(sc);
  }
  DELAY(5);
 }


 IWM_CLRBITS(sc, IWM_CSR_GP_CNTRL,
     IWM_CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ);


 iwm_apm_stop(sc);


 IWM_SETBITS(sc, IWM_CSR_RESET, IWM_CSR_RESET_REG_FLAG_SW_RESET);
 DELAY(5000);




 iwm_disable_interrupts(sc);





 iwm_enable_rfkill_int(sc);
 iwm_check_rfkill(sc);

 iwm_prepare_card_hw(sc);
}
