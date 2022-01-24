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
typedef  int uint8_t ;
struct uaudio_softc {int /*<<< orphan*/ * sc_mixer_xfer; } ;
struct uaudio_mixer_node {int* update; int /*<<< orphan*/ * wData; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uaudio_mixer_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct uaudio_softc *sc, struct uaudio_mixer_node *mc,
    uint8_t chan, int32_t val)
{
	val = FUNC0(mc, val);

	mc->update[chan / 8] |= (1 << (chan % 8));
	mc->wData[chan] = val;

	/* start the transfer, if not already started */

	FUNC1(sc->sc_mixer_xfer[0]);
}