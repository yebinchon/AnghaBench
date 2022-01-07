
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwm_softc {TYPE_1__* cfg; } ;
struct TYPE_2__ {scalar_t__ mqrx_supported; } ;


 int IWM_FH_MEM_RCSR_CHNL0_CONFIG_REG ;
 int IWM_FH_MEM_RSSR_RX_STATUS_REG ;
 int IWM_FH_RSSR_CHNL0_RX_STATUS_CHNL_IDLE ;
 int IWM_RFH_GEN_STATUS ;
 int IWM_RFH_RXF_DMA_CFG ;
 int IWM_RXF_DMA_IDLE ;
 int IWM_WRITE (struct iwm_softc*,int ,int ) ;
 scalar_t__ iwm_nic_lock (struct iwm_softc*) ;
 int iwm_nic_unlock (struct iwm_softc*) ;
 int iwm_poll_bit (struct iwm_softc*,int ,int ,int ,int) ;
 int iwm_poll_prph (struct iwm_softc*,int ,int ,int ,int) ;
 int iwm_write_prph (struct iwm_softc*,int ,int ) ;

int
iwm_pcie_rx_stop(struct iwm_softc *sc)
{
 int ret;

 ret = 0;
 if (iwm_nic_lock(sc)) {
  if (sc->cfg->mqrx_supported) {
   iwm_write_prph(sc, IWM_RFH_RXF_DMA_CFG, 0);
   ret = iwm_poll_prph(sc, IWM_RFH_GEN_STATUS,
       IWM_RXF_DMA_IDLE, IWM_RXF_DMA_IDLE, 1000);
  } else {
   IWM_WRITE(sc, IWM_FH_MEM_RCSR_CHNL0_CONFIG_REG, 0);
   ret = iwm_poll_bit(sc, IWM_FH_MEM_RSSR_RX_STATUS_REG,
       IWM_FH_RSSR_CHNL0_RX_STATUS_CHNL_IDLE,
       IWM_FH_RSSR_CHNL0_RX_STATUS_CHNL_IDLE,
       1000);
  }
  iwm_nic_unlock(sc);
 }
 return ret;
}
