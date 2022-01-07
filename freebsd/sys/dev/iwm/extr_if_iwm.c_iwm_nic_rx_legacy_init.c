
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int paddr; } ;
struct TYPE_5__ {int paddr; } ;
struct TYPE_7__ {TYPE_2__ stat_dma; TYPE_1__ free_desc_dma; } ;
struct iwm_softc {TYPE_4__* cfg; TYPE_3__ rxq; } ;
struct TYPE_8__ {scalar_t__ host_interrupt_operation_mode; } ;


 int EBUSY ;
 int IWM_CSR_INT_COALESCING ;
 int IWM_FH_MEM_RCSR_CHNL0_CONFIG_REG ;
 int IWM_FH_MEM_RCSR_CHNL0_FLUSH_RB_REQ ;
 int IWM_FH_MEM_RCSR_CHNL0_RBDCB_WPTR ;
 int IWM_FH_RCSR_CHNL0_RX_CONFIG_IRQ_DEST_INT_HOST_VAL ;
 int IWM_FH_RCSR_CHNL0_RX_IGNORE_RXF_EMPTY ;
 int IWM_FH_RCSR_RX_CONFIG_CHNL_EN_ENABLE_VAL ;
 int IWM_FH_RCSR_RX_CONFIG_RBDCB_SIZE_POS ;
 int IWM_FH_RCSR_RX_CONFIG_REG_IRQ_RBTH_POS ;
 int IWM_FH_RCSR_RX_CONFIG_REG_VAL_RB_SIZE_4K ;
 int IWM_FH_RSCSR_CHNL0_RBDCB_BASE_REG ;
 int IWM_FH_RSCSR_CHNL0_RBDCB_WPTR_REG ;
 int IWM_FH_RSCSR_CHNL0_RDPTR ;
 int IWM_FH_RSCSR_CHNL0_STTS_WPTR_REG ;
 int IWM_FH_RSCSR_CHNL0_WPTR ;
 int IWM_HOST_INT_OPER_MODE ;
 int IWM_HOST_INT_TIMEOUT_DEF ;
 int IWM_RX_QUEUE_SIZE_LOG ;
 int IWM_RX_RB_TIMEOUT ;
 int IWM_SETBITS (struct iwm_softc*,int ,int ) ;
 int IWM_WRITE (struct iwm_softc*,int ,int) ;
 int IWM_WRITE_1 (struct iwm_softc*,int ,int ) ;
 int iwm_nic_lock (struct iwm_softc*) ;
 int iwm_nic_unlock (struct iwm_softc*) ;
 int iwm_pcie_rx_stop (struct iwm_softc*) ;

__attribute__((used)) static int
iwm_nic_rx_legacy_init(struct iwm_softc *sc)
{


 iwm_pcie_rx_stop(sc);

 if (!iwm_nic_lock(sc))
  return EBUSY;


 IWM_WRITE(sc, IWM_FH_MEM_RCSR_CHNL0_RBDCB_WPTR, 0);
 IWM_WRITE(sc, IWM_FH_MEM_RCSR_CHNL0_FLUSH_RB_REQ, 0);
 IWM_WRITE(sc, IWM_FH_RSCSR_CHNL0_RDPTR, 0);
 IWM_WRITE(sc, IWM_FH_RSCSR_CHNL0_RBDCB_WPTR_REG, 0);


 IWM_WRITE(sc,
     IWM_FH_RSCSR_CHNL0_RBDCB_BASE_REG,
     sc->rxq.free_desc_dma.paddr >> 8);


 IWM_WRITE(sc,
     IWM_FH_RSCSR_CHNL0_STTS_WPTR_REG, sc->rxq.stat_dma.paddr >> 4);
 IWM_WRITE(sc, IWM_FH_MEM_RCSR_CHNL0_CONFIG_REG,
     IWM_FH_RCSR_RX_CONFIG_CHNL_EN_ENABLE_VAL |
     IWM_FH_RCSR_CHNL0_RX_IGNORE_RXF_EMPTY |
     IWM_FH_RCSR_CHNL0_RX_CONFIG_IRQ_DEST_INT_HOST_VAL |
     IWM_FH_RCSR_RX_CONFIG_REG_VAL_RB_SIZE_4K |
     (IWM_RX_RB_TIMEOUT << IWM_FH_RCSR_RX_CONFIG_REG_IRQ_RBTH_POS) |
     IWM_RX_QUEUE_SIZE_LOG << IWM_FH_RCSR_RX_CONFIG_RBDCB_SIZE_POS);

 IWM_WRITE_1(sc, IWM_CSR_INT_COALESCING, IWM_HOST_INT_TIMEOUT_DEF);


 if (sc->cfg->host_interrupt_operation_mode)
  IWM_SETBITS(sc, IWM_CSR_INT_COALESCING, IWM_HOST_INT_OPER_MODE);

 iwm_nic_unlock(sc);

 IWM_WRITE(sc, IWM_FH_RSCSR_CHNL0_WPTR, 8);

 return 0;
}
