
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwm_softc {int sc_dev; TYPE_2__* cfg; } ;
struct TYPE_4__ {scalar_t__ device_family; scalar_t__ host_interrupt_operation_mode; TYPE_1__* base_params; } ;
struct TYPE_3__ {scalar_t__ pll_cfg_val; } ;


 int DELAY (int) ;
 int ETIMEDOUT ;
 int IWM_APMG_CLK_EN_REG ;
 int IWM_APMG_CLK_VAL_DMA_CLK_RQT ;
 int IWM_APMG_PCIDEV_STT_REG ;
 int IWM_APMG_PCIDEV_STT_VAL_L1_ACT_DIS ;
 int IWM_APMG_RTC_INT_STT_REG ;
 int IWM_APMG_RTC_INT_STT_RFKILL ;
 int IWM_CSR_ANA_PLL_CFG ;
 int IWM_CSR_DBG_HPET_MEM_REG ;
 scalar_t__ IWM_CSR_DBG_HPET_MEM_REG_VAL ;
 int IWM_CSR_GIO_CHICKEN_BITS ;
 scalar_t__ IWM_CSR_GIO_CHICKEN_BITS_REG_BIT_DIS_L0S_EXIT_TIMER ;
 scalar_t__ IWM_CSR_GIO_CHICKEN_BITS_REG_BIT_L1A_NO_L0S_RX ;
 int IWM_CSR_GP_CNTRL ;
 scalar_t__ IWM_CSR_GP_CNTRL_REG_FLAG_INIT_DONE ;
 int IWM_CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY ;
 int IWM_CSR_HW_IF_CONFIG_REG ;
 scalar_t__ IWM_CSR_HW_IF_CONFIG_REG_BIT_HAP_WAKE_L1A ;
 int IWM_DEBUG_RESET ;
 scalar_t__ IWM_DEVICE_FAMILY_7000 ;
 scalar_t__ IWM_DEVICE_FAMILY_8000 ;
 int IWM_DPRINTF (struct iwm_softc*,int ,char*) ;
 int IWM_OSC_CLK ;
 int IWM_OSC_CLK_FORCE_CONTROL ;
 int IWM_SETBITS (struct iwm_softc*,int ,scalar_t__) ;
 int device_printf (int ,char*,...) ;
 int iwm_apm_config (struct iwm_softc*) ;
 scalar_t__ iwm_nic_lock (struct iwm_softc*) ;
 int iwm_nic_unlock (struct iwm_softc*) ;
 int iwm_poll_bit (struct iwm_softc*,int ,int ,int ,int) ;
 int iwm_read_prph (struct iwm_softc*,int ) ;
 int iwm_set_bits_prph (struct iwm_softc*,int ,int ) ;
 int iwm_write_prph (struct iwm_softc*,int ,int ) ;
 struct iwm_softc* trans ;

int
iwm_apm_init(struct iwm_softc *sc)
{
 int error = 0;

 IWM_DPRINTF(sc, IWM_DEBUG_RESET, "iwm apm start\n");


 if (sc->cfg->device_family < IWM_DEVICE_FAMILY_8000) {
  IWM_SETBITS(sc, IWM_CSR_GIO_CHICKEN_BITS,
      IWM_CSR_GIO_CHICKEN_BITS_REG_BIT_DIS_L0S_EXIT_TIMER);
 }





 IWM_SETBITS(sc, IWM_CSR_GIO_CHICKEN_BITS,
     IWM_CSR_GIO_CHICKEN_BITS_REG_BIT_L1A_NO_L0S_RX);


 IWM_SETBITS(sc, IWM_CSR_DBG_HPET_MEM_REG, IWM_CSR_DBG_HPET_MEM_REG_VAL);





 IWM_SETBITS(sc, IWM_CSR_HW_IF_CONFIG_REG,
     IWM_CSR_HW_IF_CONFIG_REG_BIT_HAP_WAKE_L1A);

 iwm_apm_config(sc);
 IWM_SETBITS(sc, IWM_CSR_GP_CNTRL, IWM_CSR_GP_CNTRL_REG_FLAG_INIT_DONE);






 if (!iwm_poll_bit(sc, IWM_CSR_GP_CNTRL,
     IWM_CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY,
     IWM_CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY, 25000)) {
  device_printf(sc->sc_dev,
      "timeout waiting for clock stabilization\n");
  error = ETIMEDOUT;
  goto out;
 }

 if (sc->cfg->host_interrupt_operation_mode) {
  if (iwm_nic_lock(sc)) {
   iwm_read_prph(sc, IWM_OSC_CLK);
   iwm_read_prph(sc, IWM_OSC_CLK);
   iwm_nic_unlock(sc);
  }
  iwm_set_bits_prph(sc, IWM_OSC_CLK, IWM_OSC_CLK_FORCE_CONTROL);
  if (iwm_nic_lock(sc)) {
   iwm_read_prph(sc, IWM_OSC_CLK);
   iwm_read_prph(sc, IWM_OSC_CLK);
   iwm_nic_unlock(sc);
  }
 }
 if (sc->cfg->device_family == IWM_DEVICE_FAMILY_7000) {
  if (iwm_nic_lock(sc)) {
   iwm_write_prph(sc, IWM_APMG_CLK_EN_REG,
       IWM_APMG_CLK_VAL_DMA_CLK_RQT);
   iwm_nic_unlock(sc);
  }
  DELAY(20);


  iwm_set_bits_prph(sc, IWM_APMG_PCIDEV_STT_REG,
      IWM_APMG_PCIDEV_STT_VAL_L1_ACT_DIS);


  if (iwm_nic_lock(sc)) {
   iwm_write_prph(sc, IWM_APMG_RTC_INT_STT_REG,
       IWM_APMG_RTC_INT_STT_RFKILL);
   iwm_nic_unlock(sc);
  }
 }
 out:
 if (error)
  device_printf(sc->sc_dev, "apm init error %d\n", error);
 return error;
}
