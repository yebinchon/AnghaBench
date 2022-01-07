
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bwn_softc {scalar_t__ sc_led_ticks; scalar_t__ sc_led_idle; int sc_rx_rate; int sc_tx_rate; scalar_t__ sc_led_blinking; struct bwn_led* sc_blink_led; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;
struct bwn_led {int led_flags; } ;
struct TYPE_2__ {int off_dur; int on_dur; } ;





 int BWN_LED_F_POLLABLE ;
 int bwn_led_blink_start (struct bwn_mac*,int ,int ) ;
 TYPE_1__* bwn_led_duration ;
 int panic (char*,int) ;
 scalar_t__ ticks ;

__attribute__((used)) static void
bwn_led_event(struct bwn_mac *mac, int event)
{
 struct bwn_softc *sc = mac->mac_sc;
 struct bwn_led *led = sc->sc_blink_led;
 int rate;

 if (event == 130) {
  if ((led->led_flags & BWN_LED_F_POLLABLE) == 0)
   return;
  if (ticks - sc->sc_led_ticks < sc->sc_led_idle)
   return;
 }

 sc->sc_led_ticks = ticks;
 if (sc->sc_led_blinking)
  return;

 switch (event) {
 case 129:
  rate = sc->sc_rx_rate;
  break;
 case 128:
  rate = sc->sc_tx_rate;
  break;
 case 130:
  rate = 0;
  break;
 default:
  panic("unknown LED event %d\n", event);
  break;
 }
 bwn_led_blink_start(mac, bwn_led_duration[rate].on_dur,
     bwn_led_duration[rate].off_dur);
}
