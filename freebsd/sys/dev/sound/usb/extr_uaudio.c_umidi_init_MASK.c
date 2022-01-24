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
struct umidi_chan {int /*<<< orphan*/  mtx; } ;
struct uaudio_softc {struct umidi_chan sc_midi_chan; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int MTX_DEF ; 
 int MTX_RECURSE ; 
 struct uaudio_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC2(device_t dev)
{
	struct uaudio_softc *sc = FUNC0(dev);
	struct umidi_chan *chan = &sc->sc_midi_chan;

	FUNC1(&chan->mtx, "umidi lock", NULL, MTX_DEF | MTX_RECURSE);
}