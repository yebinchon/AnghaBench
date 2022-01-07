
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ieee80211com {int ic_curmode; } ;
struct bwi_softc {int sc_flags; struct bwi_led* sc_leds; scalar_t__ sc_led_blinking; int sc_led_blink_ch; struct ieee80211com sc_ic; } ;
struct bwi_led {int l_act; int l_flags; } ;
typedef enum ieee80211_state { ____Placeholder_ieee80211_state } ieee80211_state ;


 int BWI_F_RUNNING ;
 int BWI_LED_ACT_11G ;

 int BWI_LED_ACT_ASSOC ;
 int BWI_LED_ACT_NULL ;


 int BWI_LED_ACT_UNKN ;
 int BWI_LED_F_BLINK ;
 int BWI_LED_MAX ;
 int BWI_MAC_GPIO_CTRL ;
 int CSR_READ_2 (struct bwi_softc*,int ) ;
 int CSR_WRITE_2 (struct bwi_softc*,int ,int ) ;
 int IEEE80211_MODE_11G ;


 int bwi_led_onoff (struct bwi_led*,int ,int) ;
 int callout_stop (int *) ;

__attribute__((used)) static void
bwi_led_newstate(struct bwi_softc *sc, enum ieee80211_state nstate)
{
 struct ieee80211com *ic = &sc->sc_ic;
 uint16_t val;
 int i;

 if (nstate == 129) {
  callout_stop(&sc->sc_led_blink_ch);
  sc->sc_led_blinking = 0;
 }

 if ((sc->sc_flags & BWI_F_RUNNING) == 0)
  return;

 val = CSR_READ_2(sc, BWI_MAC_GPIO_CTRL);
 for (i = 0; i < BWI_LED_MAX; ++i) {
  struct bwi_led *led = &sc->sc_leds[i];
  int on;

  if (led->l_act == BWI_LED_ACT_UNKN ||
      led->l_act == BWI_LED_ACT_NULL)
   continue;

  if ((led->l_flags & BWI_LED_F_BLINK) &&
      nstate != 129)
       continue;

  switch (led->l_act) {
  case 130:
   on = 1;
   break;
  case 131:
  case 132:
   on = 0;
   break;
  default:
   on = 1;
   switch (nstate) {
   case 129:
    on = 0;
    break;
   case 128:
    if (led->l_act == BWI_LED_ACT_11G &&
        ic->ic_curmode != IEEE80211_MODE_11G)
     on = 0;
    break;
   default:
    if (led->l_act == BWI_LED_ACT_ASSOC)
     on = 0;
    break;
   }
   break;
  }

  val = bwi_led_onoff(led, val, on);
 }
 CSR_WRITE_2(sc, BWI_MAC_GPIO_CTRL, val);
}
