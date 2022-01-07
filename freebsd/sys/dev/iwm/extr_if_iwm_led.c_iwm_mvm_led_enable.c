
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int dummy; } ;


 int IWM_CSR_LED_REG ;
 int IWM_CSR_LED_REG_TURN_ON ;
 int IWM_WRITE (struct iwm_softc*,int ,int ) ;

void
iwm_mvm_led_enable(struct iwm_softc *sc)
{
 IWM_WRITE(sc, IWM_CSR_LED_REG, IWM_CSR_LED_REG_TURN_ON);
}
