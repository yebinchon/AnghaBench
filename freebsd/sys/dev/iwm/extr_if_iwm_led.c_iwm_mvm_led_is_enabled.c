
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int dummy; } ;


 int IWM_CSR_LED_REG ;
 scalar_t__ IWM_CSR_LED_REG_TURN_ON ;
 scalar_t__ IWM_READ (struct iwm_softc*,int ) ;

__attribute__((used)) static int
iwm_mvm_led_is_enabled(struct iwm_softc *sc)
{
 return (IWM_READ(sc, IWM_CSR_LED_REG) == IWM_CSR_LED_REG_TURN_ON);
}
