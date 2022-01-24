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
typedef  int uint32_t ;
struct uaudio_chan {int running; scalar_t__ buf; scalar_t__ cur; scalar_t__ end; scalar_t__ start; int /*<<< orphan*/  set_alt; struct uaudio_softc* priv_sc; } ;
struct uaudio_softc {int /*<<< orphan*/  sc_udev; struct uaudio_chan sc_play_chan; struct uaudio_chan sc_rec_chan; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct uaudio_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct uaudio_chan*) ; 
 int FUNC2 (struct uaudio_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(struct uaudio_chan *ch)
{
	struct uaudio_softc *sc = ch->priv_sc;

	/* make operation atomic */
	FUNC3(sc->sc_udev);

	/* check if not running */
	if (ch->running == 0) {
	  	uint32_t temp;

		/* get current buffer size */
		temp = 2 * FUNC2(ch, ch->set_alt);

		/* set running flag */
		ch->running = 1;

		/* ensure the hardware buffer is reset */
		ch->start = ch->buf;
		ch->end = ch->buf + temp;
		ch->cur = ch->buf;

		if (FUNC0(sc)) {
			/*
			 * Start both endpoints because of need for
			 * jitter information:
			 */
			FUNC1(&sc->sc_rec_chan);
			FUNC1(&sc->sc_play_chan);
		} else {
			FUNC1(ch);
		}
	}

	/* exit atomic operation */
	FUNC4(sc->sc_udev);
}