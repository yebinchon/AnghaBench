
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwm_softc {TYPE_1__* cfg; } ;
struct TYPE_2__ {scalar_t__ mqrx_supported; } ;


 int DELAY (int) ;
 int IWM_CSR_RESET ;
 int IWM_CSR_RESET_REG_FLAG_SW_RESET ;
 int IWM_UREG_CHICK ;
 int IWM_UREG_CHICK_MSI_ENABLE ;
 int IWM_WRITE (struct iwm_softc*,int ,int ) ;
 int iwm_apm_init (struct iwm_softc*) ;
 int iwm_check_rfkill (struct iwm_softc*) ;
 int iwm_enable_rfkill_int (struct iwm_softc*) ;
 int iwm_prepare_card_hw (struct iwm_softc*) ;
 int iwm_write_prph (struct iwm_softc*,int ,int ) ;

int
iwm_start_hw(struct iwm_softc *sc)
{
 int error;

 if ((error = iwm_prepare_card_hw(sc)) != 0)
  return error;


 IWM_WRITE(sc, IWM_CSR_RESET, IWM_CSR_RESET_REG_FLAG_SW_RESET);
 DELAY(5000);

 if ((error = iwm_apm_init(sc)) != 0)
  return error;


 if (sc->cfg->mqrx_supported)
  iwm_write_prph(sc, IWM_UREG_CHICK, IWM_UREG_CHICK_MSI_ENABLE);

 iwm_enable_rfkill_int(sc);
 iwm_check_rfkill(sc);

 return 0;
}
