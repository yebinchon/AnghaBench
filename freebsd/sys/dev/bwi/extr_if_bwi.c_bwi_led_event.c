
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bwi_softc {scalar_t__ sc_led_ticks; scalar_t__ sc_led_idle; int sc_rx_rate; int sc_tx_rate; scalar_t__ sc_led_blinking; struct bwi_led* sc_blink_led; } ;
struct bwi_led {int l_flags; } ;
struct TYPE_2__ {int off_dur; int on_dur; } ;





 int BWI_LED_F_POLLABLE ;
 int bwi_led_blink_start (struct bwi_softc*,int ,int ) ;
 TYPE_1__* bwi_led_duration ;
 int panic (char*,int) ;
 scalar_t__ ticks ;

__attribute__((used)) static void
bwi_led_event(struct bwi_softc *sc, int event)
{
 struct bwi_led *led = sc->sc_blink_led;
 int rate;

 if (event == 130) {
  if ((led->l_flags & BWI_LED_F_POLLABLE) == 0)
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
 bwi_led_blink_start(sc, bwi_led_duration[rate].on_dur,
     bwi_led_duration[rate].off_dur);
}
