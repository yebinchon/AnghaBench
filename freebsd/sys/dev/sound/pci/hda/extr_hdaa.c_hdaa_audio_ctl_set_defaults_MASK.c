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
struct hdaa_pcm_devinfo {int ossmask; int* maxamp; int* minamp; int /*<<< orphan*/  mixer; int /*<<< orphan*/  digital; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int SOUND_MIXER_IGAIN ; 
 int SOUND_MIXER_MIC ; 
 int SOUND_MIXER_MONITOR ; 
 int SOUND_MIXER_NRDEVICES ; 
 int SOUND_MIXER_OGAIN ; 
 int SOUND_MIXER_VOLUME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/ * ossnames ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void
FUNC6(struct hdaa_pcm_devinfo *pdevinfo)
{
	int amp, vol, dev;

	for (dev = 0; dev < SOUND_MIXER_NRDEVICES; dev++) {
		if ((pdevinfo->ossmask & (1 << dev)) == 0)
			continue;

		/* If the value was overriden, leave it as is. */
		if (FUNC5(FUNC0(pdevinfo->dev),
		    FUNC1(pdevinfo->dev), ossnames[dev], &vol) == 0)
			continue;

		vol = -1;
		if (dev == SOUND_MIXER_OGAIN)
			vol = 100;
		else if (dev == SOUND_MIXER_IGAIN)
			vol = 0;
		else if (dev == SOUND_MIXER_MIC ||
		    dev == SOUND_MIXER_MONITOR)
			amp = 20 * 4;	/* +20dB */
		else if (dev == SOUND_MIXER_VOLUME && !pdevinfo->digital)
			amp = -10 * 4;	/* -10dB */
		else
			amp = 0;
		if (vol < 0 &&
		    (pdevinfo->maxamp[dev] - pdevinfo->minamp[dev]) <= 0) {
			vol = 100;
		} else if (vol < 0) {
			vol = ((amp - pdevinfo->minamp[dev]) * 100 +
			    (pdevinfo->maxamp[dev] - pdevinfo->minamp[dev]) / 2) /
			    (pdevinfo->maxamp[dev] - pdevinfo->minamp[dev]);
			vol = FUNC3(FUNC2(vol, 1), 100);
		}
		FUNC4(pdevinfo->mixer, dev, vol, vol);
	}
}