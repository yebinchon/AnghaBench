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
struct uaudio_chan {scalar_t__ running; struct uaudio_softc* priv_sc; } ;
struct uaudio_softc {int /*<<< orphan*/  sc_udev; struct uaudio_chan sc_play_chan; struct uaudio_chan sc_rec_chan; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct uaudio_softc*) ; 
 scalar_t__ FUNC1 (struct uaudio_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct uaudio_chan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(struct uaudio_chan *ch)
{
	struct uaudio_softc *sc = ch->priv_sc;

	/* make operation atomic */
	FUNC3(sc->sc_udev);

	/* check if running */
	if (ch->running != 0) {
		/* clear running flag */
		ch->running = 0;

		if (FUNC0(sc)) {
			/*
			 * Leave the endpoints running because we need
			 * information about jitter!
			 */
		} else if (FUNC1(sc)) {
			/*
			 * Stop both endpoints in case the one was used for
			 * jitter information:
			 */
			FUNC2(&sc->sc_rec_chan);
			FUNC2(&sc->sc_play_chan);
		} else {
			FUNC2(ch);
		}
	}

	/* exit atomic operation */
	FUNC4(sc->sc_udev);
}