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
struct TYPE_4__ {int /*<<< orphan*/  xfer; void* operation; } ;
struct TYPE_3__ {int /*<<< orphan*/  xfer; void* operation; } ;
struct uaudio_softc {scalar_t__ sc_sndstat_valid; int /*<<< orphan*/  sc_sndstat; TYPE_2__ sc_rec_chan; TYPE_1__ sc_play_chan; int /*<<< orphan*/  sc_udev; int /*<<< orphan*/ * sc_config_msg; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 void* CHAN_OP_DRAIN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ UAUDIO_NCHANBUFS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct uaudio_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct uaudio_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct uaudio_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct uaudio_softc *sc = FUNC2(dev);

	/*
	 * Stop USB transfers early so that any audio applications
	 * will time out and close opened /dev/dspX.Y device(s), if
	 * any.
	 */
	FUNC7(sc->sc_udev);
	sc->sc_play_chan.operation = CHAN_OP_DRAIN;
	sc->sc_rec_chan.operation = CHAN_OP_DRAIN;
	FUNC8(sc->sc_udev,
	    &sc->sc_config_msg[0], &sc->sc_config_msg[1]);
	FUNC9(sc->sc_udev);

	FUNC10(sc->sc_play_chan.xfer, UAUDIO_NCHANBUFS + 1);
	FUNC10(sc->sc_rec_chan.xfer, UAUDIO_NCHANBUFS + 1);

	FUNC4(sc);

	if (FUNC1(dev) != 0) {
		FUNC0("detach failed!\n");
	}
	FUNC3(&sc->sc_sndstat);
	sc->sc_sndstat_valid = 0;

	FUNC6(dev);

	/* free mixer data */

	FUNC5(sc);

	return (0);
}