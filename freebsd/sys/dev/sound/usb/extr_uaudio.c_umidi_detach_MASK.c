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
typedef  size_t uint32_t ;
struct umidi_chan {int /*<<< orphan*/  mtx; int /*<<< orphan*/ * xfer; TYPE_1__* sub; } ;
struct uaudio_softc {struct umidi_chan sc_midi_chan; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  fifo; } ;

/* Variables and functions */
 size_t UMIDI_EMB_JACK_MAX ; 
 int /*<<< orphan*/  UMIDI_N_TRANSFER ; 
 size_t UMIDI_RX_TRANSFER ; 
 struct uaudio_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct uaudio_softc *sc = FUNC0(dev);
	struct umidi_chan *chan = &sc->sc_midi_chan;
	uint32_t n;

	for (n = 0; n < UMIDI_EMB_JACK_MAX; n++)
		FUNC4(&chan->sub[n].fifo);

	FUNC2(&chan->mtx);

	FUNC5(chan->xfer[UMIDI_RX_TRANSFER]);

	FUNC3(&chan->mtx);

	FUNC6(chan->xfer, UMIDI_N_TRANSFER);

	FUNC1(&chan->mtx);

	return (0);
}