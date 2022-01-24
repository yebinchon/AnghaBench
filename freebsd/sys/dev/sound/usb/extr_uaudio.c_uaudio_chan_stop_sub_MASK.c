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
struct uaudio_softc {int /*<<< orphan*/ * sc_config_msg; int /*<<< orphan*/  sc_udev; } ;
struct uaudio_chan {scalar_t__ operation; scalar_t__ cur_alt; scalar_t__ set_alt; int /*<<< orphan*/ * xfer; int /*<<< orphan*/  pcm_mtx; struct uaudio_softc* priv_sc; } ;

/* Variables and functions */
 scalar_t__ CHAN_OP_DRAIN ; 
 scalar_t__ CHAN_OP_NONE ; 
 scalar_t__ CHAN_OP_STOP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct uaudio_chan *ch)
{
	struct uaudio_softc *sc = ch->priv_sc;
	int do_stop = 0;

	if (ch->operation != CHAN_OP_DRAIN) {
		if (ch->cur_alt == ch->set_alt &&
		    ch->operation == CHAN_OP_NONE &&
		    FUNC0(ch->pcm_mtx) != 0) {
			/* save doing the explore task */
			do_stop = 1;
		} else {
			ch->operation = CHAN_OP_STOP;
			(void)FUNC1(sc->sc_udev,
			    &sc->sc_config_msg[0], &sc->sc_config_msg[1]);
		}
	}
	if (do_stop) {
		FUNC2(ch->xfer[0]);
		FUNC2(ch->xfer[1]);
	}
}