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
struct uaudio_softc {int sc_mix_info; int /*<<< orphan*/  sc_recsrc_info; int /*<<< orphan*/  sc_mixer_lock; int /*<<< orphan*/  sc_mixer_xfer; int /*<<< orphan*/  sc_mixer_iface_index; int /*<<< orphan*/  sc_udev; struct snd_mixer* sc_mixer_dev; } ;
struct snd_mixer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SOUND_MASK_PCM ; 
 int SOUND_MASK_VOLUME ; 
 int /*<<< orphan*/  SOUND_MIXER_NONE ; 
 int /*<<< orphan*/  SOUND_MIXER_VOLUME ; 
 int /*<<< orphan*/  FUNC2 (struct snd_mixer*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_mixer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_mixer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_mixer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_mixer*) ; 
 int /*<<< orphan*/  uaudio_mixer_config ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct uaudio_softc*,int /*<<< orphan*/ ) ; 

int
FUNC8(struct uaudio_softc *sc, struct snd_mixer *m)
{
	FUNC0("\n");

	sc->sc_mixer_lock = FUNC6(m);
	sc->sc_mixer_dev = m;

	if (FUNC7(sc->sc_udev, &sc->sc_mixer_iface_index,
	    sc->sc_mixer_xfer, uaudio_mixer_config, 1, sc,
	    sc->sc_mixer_lock)) {
		FUNC1(0, "could not allocate USB "
		    "transfer for audio mixer!\n");
		return (ENOMEM);
	}
	if (!(sc->sc_mix_info & SOUND_MASK_VOLUME)) {
		FUNC3(m, SOUND_MIXER_VOLUME, SOUND_MASK_PCM);
		FUNC4(m, SOUND_MIXER_VOLUME, SOUND_MIXER_NONE);
	}
	FUNC2(m, sc->sc_mix_info);
	FUNC5(m, sc->sc_recsrc_info);
	return (0);
}