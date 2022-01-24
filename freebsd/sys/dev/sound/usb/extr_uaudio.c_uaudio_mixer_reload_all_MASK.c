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
struct TYPE_2__ {int /*<<< orphan*/ * xfer; } ;
struct uaudio_softc {int /*<<< orphan*/ * sc_mixer_lock; TYPE_1__ sc_hid; int /*<<< orphan*/ * sc_mixer_xfer; struct uaudio_mixer_node* sc_mixer_root; } ;
struct uaudio_mixer_node {scalar_t__ ctl; int nchan; int* update; struct uaudio_mixer_node* next; } ;

/* Variables and functions */
 scalar_t__ SOUND_MIXER_NRDEVICES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct uaudio_softc *sc)
{
	struct uaudio_mixer_node *pmc;
	int chan;

	if (sc->sc_mixer_lock == NULL)
		return;

	FUNC0(sc->sc_mixer_lock);
	for (pmc = sc->sc_mixer_root; pmc != NULL; pmc = pmc->next) {
		/* use reset defaults for non-oss controlled settings */
		if (pmc->ctl == SOUND_MIXER_NRDEVICES)
			continue;
		for (chan = 0; chan < pmc->nchan; chan++)
			pmc->update[chan / 8] |= (1 << (chan % 8));
	}
	FUNC2(sc->sc_mixer_xfer[0]);

	/* start HID volume keys, if any */
	FUNC2(sc->sc_hid.xfer[0]);
	FUNC1(sc->sc_mixer_lock);
}