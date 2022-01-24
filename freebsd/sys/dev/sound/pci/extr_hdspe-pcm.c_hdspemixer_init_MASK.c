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
struct snd_mixer {int dummy; } ;
struct sc_pcminfo {int /*<<< orphan*/  dev; TYPE_1__* hc; struct sc_info* sc; } ;
struct sc_info {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {scalar_t__ rec; scalar_t__ play; } ;

/* Variables and functions */
 int SD_F_SOFTPCMVOL ; 
 int SOUND_MASK_PCM ; 
 int SOUND_MASK_RECLEV ; 
 int SOUND_MASK_VOLUME ; 
 struct sc_pcminfo* FUNC0 (struct snd_mixer*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_mixer*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct snd_mixer *m)
{
	struct sc_pcminfo *scp;
	struct sc_info *sc;
	int mask;

	scp = FUNC0(m);
	sc = scp->sc;
	if (sc == NULL)
		return (-1);

	mask = SOUND_MASK_PCM;

	if (scp->hc->play)
		mask |= SOUND_MASK_VOLUME;

	if (scp->hc->rec)
		mask |= SOUND_MASK_RECLEV;

	FUNC4(sc->lock);
	FUNC3(scp->dev, FUNC2(scp->dev) | SD_F_SOFTPCMVOL);
	FUNC1(m, mask);
	FUNC5(sc->lock);

	return (0);
}