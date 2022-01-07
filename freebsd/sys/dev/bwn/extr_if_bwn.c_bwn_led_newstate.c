
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ieee80211com {int ic_curmode; } ;
struct bwn_softc {int sc_flags; struct bwn_led* sc_leds; scalar_t__ sc_led_blinking; int sc_led_blink_ch; struct ieee80211com sc_ic; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;
struct bwn_led {int led_act; int led_flags; } ;
typedef enum ieee80211_state { ____Placeholder_ieee80211_state } ieee80211_state ;


 int BWN_FLAG_RUNNING ;
 int BWN_GPIO_CONTROL ;
 int BWN_LED_ACT_11G ;

 int BWN_LED_ACT_ASSOC ;
 int BWN_LED_ACT_NULL ;


 int BWN_LED_ACT_UNKN ;
 int BWN_LED_F_BLINK ;
 int BWN_LED_MAX ;
 int BWN_READ_2 (struct bwn_mac*,int ) ;
 int BWN_WRITE_2 (struct bwn_mac*,int ,int ) ;
 int IEEE80211_MODE_11G ;


 int bwn_led_onoff (struct bwn_led*,int ,int) ;
 int callout_stop (int *) ;

__attribute__((used)) static void
bwn_led_newstate(struct bwn_mac *mac, enum ieee80211_state nstate)
{
 struct bwn_softc *sc = mac->mac_sc;
 struct ieee80211com *ic = &sc->sc_ic;
 uint16_t val;
 int i;

 if (nstate == 129) {
  callout_stop(&sc->sc_led_blink_ch);
  sc->sc_led_blinking = 0;
 }

 if ((sc->sc_flags & BWN_FLAG_RUNNING) == 0)
  return;

 val = BWN_READ_2(mac, BWN_GPIO_CONTROL);
 for (i = 0; i < BWN_LED_MAX; ++i) {
  struct bwn_led *led = &sc->sc_leds[i];
  int on;

  if (led->led_act == BWN_LED_ACT_UNKN ||
      led->led_act == BWN_LED_ACT_NULL)
   continue;

  if ((led->led_flags & BWN_LED_F_BLINK) &&
      nstate != 129)
   continue;

  switch (led->led_act) {
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
    if (led->led_act == BWN_LED_ACT_11G &&
        ic->ic_curmode != IEEE80211_MODE_11G)
     on = 0;
    break;
   default:
    if (led->led_act == BWN_LED_ACT_ASSOC)
     on = 0;
    break;
   }
   break;
  }

  val = bwn_led_onoff(led, val, on);
 }
 BWN_WRITE_2(mac, BWN_GPIO_CONTROL, val);
}
