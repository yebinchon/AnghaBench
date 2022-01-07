
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int dummy; } ;


 int IWM_APMG_PS_CTRL_MSK_PWR_SRC ;
 int IWM_APMG_PS_CTRL_REG ;
 int IWM_APMG_PS_CTRL_VAL_PWR_SRC_VMAIN ;
 int iwm_set_bits_mask_prph (struct iwm_softc*,int ,int ,int ) ;

void
iwm_set_pwr(struct iwm_softc *sc)
{
 iwm_set_bits_mask_prph(sc, IWM_APMG_PS_CTRL_REG,
     IWM_APMG_PS_CTRL_VAL_PWR_SRC_VMAIN, ~IWM_APMG_PS_CTRL_MSK_PWR_SRC);
}
