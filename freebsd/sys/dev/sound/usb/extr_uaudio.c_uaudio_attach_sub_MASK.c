#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ num_alt; int /*<<< orphan*/  feedback_rate; } ;
struct TYPE_3__ {scalar_t__ num_alt; } ;
struct uaudio_softc {int sc_mix_info; int sc_mixer_init; int sc_pcm_registered; TYPE_2__ sc_play_chan; TYPE_1__ sc_rec_chan; scalar_t__ sc_pcm_bitperfect; scalar_t__ sc_uq_audio_swap_lr; } ;
typedef  int /*<<< orphan*/  status ;
typedef  int /*<<< orphan*/  kobj_class_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENXIO ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  PCMDIR_PLAY ; 
 int /*<<< orphan*/  PCMDIR_REC ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SD_F_BITPERFECT ; 
 int /*<<< orphan*/  SD_F_MPSAFE ; 
 int /*<<< orphan*/  SD_F_SOFTPCMVOL ; 
 int SND_STATUSLEN ; 
 int SOUND_MASK_PCM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct uaudio_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uaudio_softc*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uaudio_softc*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,struct uaudio_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  snd_uaudio ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct uaudio_softc*) ; 
 int /*<<< orphan*/  FUNC16 (struct uaudio_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC18(device_t dev, kobj_class_t mixer_class, kobj_class_t chan_class)
{
	struct uaudio_softc *sc = FUNC5(FUNC4(dev));
	char status[SND_STATUSLEN];

	FUNC15(sc);

	if (sc->sc_uq_audio_swap_lr) {
		FUNC0("hardware has swapped left and right\n");
		/* uaudio_pcm_setflags(dev, SD_F_PSWAPLR); */
	}
	if (!(sc->sc_mix_info & SOUND_MASK_PCM)) {

		FUNC0("emulating master volume\n");

		/*
		 * Emulate missing pcm mixer controller
		 * through FEEDER_VOLUME
		 */
		FUNC17(dev, SD_F_SOFTPCMVOL);
	}
	if (sc->sc_pcm_bitperfect) {
		FUNC0("device needs bitperfect by default\n");
		FUNC17(dev, SD_F_BITPERFECT);
	}
	if (FUNC9(dev, mixer_class, sc))
		goto detach;
	sc->sc_mixer_init = 1;

	FUNC8(dev);

	FUNC13(status, sizeof(status), "at ? %s", FUNC1(snd_uaudio));

	if (FUNC11(dev, sc,
	    (sc->sc_play_chan.num_alt > 0) ? 1 : 0,
	    (sc->sc_rec_chan.num_alt > 0) ? 1 : 0)) {
		goto detach;
	}

	FUNC17(dev, SD_F_MPSAFE);
	sc->sc_pcm_registered = 1;

	if (sc->sc_play_chan.num_alt > 0) {
		FUNC10(dev, PCMDIR_PLAY, chan_class, sc);
	}
	if (sc->sc_rec_chan.num_alt > 0) {
		FUNC10(dev, PCMDIR_REC, chan_class, sc);
	}
	FUNC12(dev, status);

	FUNC16(sc, dev);

	FUNC2(FUNC6(dev),
	    FUNC3(FUNC7(dev)), OID_AUTO,
	    "feedback_rate", CTLFLAG_RD, &sc->sc_play_chan.feedback_rate,
	    0, "Feedback sample rate in Hz");

	return (0);			/* success */

detach:
	FUNC14(dev);
	return (ENXIO);
}