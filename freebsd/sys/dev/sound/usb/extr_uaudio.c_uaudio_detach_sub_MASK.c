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
struct uaudio_softc {scalar_t__ sc_mixer_init; scalar_t__ sc_pcm_registered; int /*<<< orphan*/  (* sc_set_spdif_fn ) (struct uaudio_softc*,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct uaudio_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int hz ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uaudio_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

int
FUNC7(device_t dev)
{
	struct uaudio_softc *sc = FUNC1(FUNC0(dev));
	int error = 0;

	/* disable S/PDIF output, if any */
	(void) sc->sc_set_spdif_fn(sc, 0);

repeat:
	if (sc->sc_pcm_registered) {
		error = FUNC4(dev);
	} else {
		if (sc->sc_mixer_init) {
			error = FUNC3(dev);
		}
	}

	if (error) {
		FUNC2(dev, "Waiting for sound application to exit!\n");
		FUNC6(NULL, 2 * hz);
		goto repeat;		/* try again */
	}
	return (0);			/* success */
}