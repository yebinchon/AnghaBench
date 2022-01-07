
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {scalar_t__ sc_ledpin; scalar_t__ sc_led_pwr_pin; scalar_t__ sc_led_net_pin; int sc_ah; scalar_t__ sc_hardled; int sc_ledon; scalar_t__ sc_softled; } ;


 int ATH_LOCK (struct ath_softc*) ;
 int ATH_UNLOCK (struct ath_softc*) ;
 int HAL_GPIO_OUTPUT_MUX_AS_OUTPUT ;
 int HAL_GPIO_OUTPUT_MUX_MAC_NETWORK_LED ;
 int HAL_GPIO_OUTPUT_MUX_MAC_POWER_LED ;
 int HAL_PM_AWAKE ;
 int ath_hal_gpioCfgOutput (int ,scalar_t__,int ) ;
 int ath_hal_gpioset (int ,scalar_t__,int) ;
 int ath_power_restore_power_state (struct ath_softc*) ;
 int ath_power_set_power_state (struct ath_softc*,int ) ;

void
ath_led_config(struct ath_softc *sc)
{

 ATH_LOCK(sc);
 ath_power_set_power_state(sc, HAL_PM_AWAKE);
 ATH_UNLOCK(sc);


 if (sc->sc_softled) {
  ath_hal_gpioCfgOutput(sc->sc_ah, sc->sc_ledpin,
      HAL_GPIO_OUTPUT_MUX_AS_OUTPUT);
  ath_hal_gpioset(sc->sc_ah, sc->sc_ledpin, !sc->sc_ledon);
 }


 if (sc->sc_hardled) {






  if (sc->sc_led_pwr_pin > 0)
   ath_hal_gpioCfgOutput(sc->sc_ah, sc->sc_led_pwr_pin,
       HAL_GPIO_OUTPUT_MUX_MAC_POWER_LED);
  if (sc->sc_led_net_pin > 0)
   ath_hal_gpioCfgOutput(sc->sc_ah, sc->sc_led_net_pin,
       HAL_GPIO_OUTPUT_MUX_MAC_NETWORK_LED);
 }

 ATH_LOCK(sc);
 ath_power_restore_power_state(sc);
 ATH_UNLOCK(sc);
}
