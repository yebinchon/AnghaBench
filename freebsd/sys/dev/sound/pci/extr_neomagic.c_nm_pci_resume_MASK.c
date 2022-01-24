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
struct TYPE_3__ {scalar_t__ active; } ;
struct TYPE_4__ {scalar_t__ active; } ;
struct sc_info {TYPE_1__ rch; TYPE_2__ pch; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int NM_AUDIO_MUTE_REG ; 
 int NM_PLAYBACK_ENABLE_FLAG ; 
 int NM_PLAYBACK_ENABLE_REG ; 
 int NM_PLAYBACK_FREERUN ; 
 int NM_RECORD_ENABLE_FLAG ; 
 int NM_RECORD_ENABLE_REG ; 
 int NM_RECORD_FREERUN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sc_info*,int,int,int) ; 
 struct sc_info* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct sc_info *sc;

	sc = FUNC3(dev);

	/*
	 * Reinit audio device.
	 * Don't call nm_init(). It would change buftop if X ran or
	 * is running. This makes playing and recording buffer address
	 * shift but these buffers of channel layer are not changed.
	 * As a result of this inconsistency, periodic noise will be
	 * generated while playing.
	 */
	FUNC2(sc, 0, 0x11, 1);
	FUNC2(sc, 0x214, 0, 2);

	/* Reinit mixer */
    	if (FUNC1(dev) == -1) {
		FUNC0(dev, "unable to reinitialize the mixer\n");
		return ENXIO;
	}
	/* restart playing */
	if (sc->pch.active) {
		FUNC2(sc, NM_PLAYBACK_ENABLE_REG, NM_PLAYBACK_FREERUN |
			  NM_PLAYBACK_ENABLE_FLAG, 1);
		FUNC2(sc, NM_AUDIO_MUTE_REG, 0, 2);
	}
	/* restart recording */
	if (sc->rch.active) {
		FUNC2(sc, NM_RECORD_ENABLE_REG, NM_RECORD_FREERUN |
			  NM_RECORD_ENABLE_FLAG, 1);
	}
	return 0;
}