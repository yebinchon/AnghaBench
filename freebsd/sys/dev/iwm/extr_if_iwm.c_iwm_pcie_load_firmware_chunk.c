
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iwm_softc {int sc_dev; scalar_t__ sc_fw_chunk_done; int sc_mtx; int sc_fw; } ;
typedef int bus_addr_t ;


 int EBUSY ;
 int ETIMEDOUT ;
 int IWM_FH_MEM_TFDIB_DRAM_ADDR_LSB_MSK ;
 int IWM_FH_MEM_TFDIB_REG1_ADDR_BITSHIFT ;
 int IWM_FH_SRVC_CHNL ;
 int IWM_FH_SRVC_CHNL_SRAM_ADDR_REG (int ) ;
 int IWM_FH_TCSR_CHNL_TX_BUF_STS_REG (int ) ;
 int IWM_FH_TCSR_CHNL_TX_BUF_STS_REG_POS_TB_IDX ;
 int IWM_FH_TCSR_CHNL_TX_BUF_STS_REG_POS_TB_NUM ;
 int IWM_FH_TCSR_CHNL_TX_BUF_STS_REG_VAL_TFDB_VALID ;
 int IWM_FH_TCSR_CHNL_TX_CONFIG_REG (int ) ;
 int IWM_FH_TCSR_TX_CONFIG_REG_VAL_CIRQ_HOST_ENDTFD ;
 int IWM_FH_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_ENABLE ;
 int IWM_FH_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_PAUSE ;
 int IWM_FH_TCSR_TX_CONFIG_REG_VAL_DMA_CREDIT_DISABLE ;
 int IWM_FH_TFDIB_CTRL0_REG (int ) ;
 int IWM_FH_TFDIB_CTRL1_REG (int ) ;
 int IWM_WRITE (struct iwm_softc*,int ,int) ;
 int device_printf (int ,char*,int,int) ;
 int hz ;
 int iwm_get_dma_hi_addr (int) ;
 int iwm_nic_lock (struct iwm_softc*) ;
 int iwm_nic_unlock (struct iwm_softc*) ;
 int msleep (int *,int *,int ,char*,int) ;

__attribute__((used)) static int
iwm_pcie_load_firmware_chunk(struct iwm_softc *sc, uint32_t dst_addr,
        bus_addr_t phy_addr, uint32_t byte_cnt)
{
 sc->sc_fw_chunk_done = 0;

 if (!iwm_nic_lock(sc))
  return EBUSY;

 IWM_WRITE(sc, IWM_FH_TCSR_CHNL_TX_CONFIG_REG(IWM_FH_SRVC_CHNL),
     IWM_FH_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_PAUSE);

 IWM_WRITE(sc, IWM_FH_SRVC_CHNL_SRAM_ADDR_REG(IWM_FH_SRVC_CHNL),
     dst_addr);

 IWM_WRITE(sc, IWM_FH_TFDIB_CTRL0_REG(IWM_FH_SRVC_CHNL),
     phy_addr & IWM_FH_MEM_TFDIB_DRAM_ADDR_LSB_MSK);

 IWM_WRITE(sc, IWM_FH_TFDIB_CTRL1_REG(IWM_FH_SRVC_CHNL),
     (iwm_get_dma_hi_addr(phy_addr)
      << IWM_FH_MEM_TFDIB_REG1_ADDR_BITSHIFT) | byte_cnt);

 IWM_WRITE(sc, IWM_FH_TCSR_CHNL_TX_BUF_STS_REG(IWM_FH_SRVC_CHNL),
     1 << IWM_FH_TCSR_CHNL_TX_BUF_STS_REG_POS_TB_NUM |
     1 << IWM_FH_TCSR_CHNL_TX_BUF_STS_REG_POS_TB_IDX |
     IWM_FH_TCSR_CHNL_TX_BUF_STS_REG_VAL_TFDB_VALID);

 IWM_WRITE(sc, IWM_FH_TCSR_CHNL_TX_CONFIG_REG(IWM_FH_SRVC_CHNL),
     IWM_FH_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_ENABLE |
     IWM_FH_TCSR_TX_CONFIG_REG_VAL_DMA_CREDIT_DISABLE |
     IWM_FH_TCSR_TX_CONFIG_REG_VAL_CIRQ_HOST_ENDTFD);

 iwm_nic_unlock(sc);


 msleep(&sc->sc_fw, &sc->sc_mtx, 0, "iwmfw", hz * 5);

 if (!sc->sc_fw_chunk_done) {
  device_printf(sc->sc_dev,
      "fw chunk addr 0x%x len %d failed to load\n",
      dst_addr, byte_cnt);
  return ETIMEDOUT;
 }

 return 0;
}
