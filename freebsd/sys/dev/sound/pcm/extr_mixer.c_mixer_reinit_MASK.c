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
struct snd_mixer {int /*<<< orphan*/  lock; int /*<<< orphan*/  recsrc; int /*<<< orphan*/ * level; } ;
struct cdev {struct snd_mixer* si_drv1; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (struct snd_mixer*) ; 
 int SOUND_MIXER_NRDEVICES ; 
 struct cdev* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_mixer*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_mixer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(device_t dev)
{
	struct snd_mixer *m;
	struct cdev *pdev;
	int i;

	pdev = FUNC1(dev);
	m = pdev->si_drv1;
	FUNC4(m->lock);

	i = FUNC0(m);
	if (i) {
		FUNC5(m->lock);
		return i;
	}

	for (i = 0; i < SOUND_MIXER_NRDEVICES; i++)
		FUNC2(m, i, m->level[i]);

	FUNC3(m, m->recsrc);
	FUNC5(m->lock);

	return 0;
}