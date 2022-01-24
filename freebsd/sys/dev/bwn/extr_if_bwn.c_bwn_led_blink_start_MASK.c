#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct bwn_softc {int sc_led_blinking; int sc_led_blink_offdur; int /*<<< orphan*/  sc_led_blink_ch; struct bwn_led* sc_blink_led; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;
struct bwn_led {int led_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWN_GPIO_CONTROL ; 
 int BWN_LED_F_SLOW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bwn_led_blink_next ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_led*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct bwn_mac*) ; 

__attribute__((used)) static void
FUNC5(struct bwn_mac *mac, int on_dur, int off_dur)
{
	struct bwn_softc *sc = mac->mac_sc;
	struct bwn_led *led = sc->sc_blink_led;
	uint16_t val;

	val = FUNC1(mac, BWN_GPIO_CONTROL);
	val = FUNC3(led, val, 1);
	FUNC2(mac, BWN_GPIO_CONTROL, val);

	if (led->led_flags & BWN_LED_F_SLOW) {
		FUNC0(on_dur);
		FUNC0(off_dur);
	}

	sc->sc_led_blinking = 1;
	sc->sc_led_blink_offdur = off_dur;

	FUNC4(&sc->sc_led_blink_ch, on_dur, bwn_led_blink_next, mac);
}