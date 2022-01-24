#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
typedef  scalar_t__ uint32_t ;
struct uaudio_softc {int /*<<< orphan*/  sc_udev; } ;
struct uaudio_chan {size_t num_alt; size_t set_alt; TYPE_1__* usb_alt; struct uaudio_softc* priv_sc; } ;
struct TYPE_2__ {scalar_t__ sample_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(struct uaudio_chan *ch, uint32_t speed)
{
	struct uaudio_softc *sc;
	uint8_t x;

	sc = ch->priv_sc;

	for (x = 0; x < ch->num_alt; x++) {
		if (ch->usb_alt[x].sample_rate < speed) {
			/* sample rate is too low */
			break;
		}
	}

	if (x != 0)
		x--;

	FUNC1(sc->sc_udev);
	ch->set_alt = x;
	FUNC2(sc->sc_udev);

	FUNC0("Selecting alt %d\n", (int)x);

	return (ch->usb_alt[x].sample_rate);
}