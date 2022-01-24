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
struct snddev_info {scalar_t__ playcount; scalar_t__ reccount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snddev_info*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 struct snddev_info* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * pcm_devclass ; 

__attribute__((used)) static int
FUNC3(int old)
{
	struct snddev_info *d;
	int i, best, bestprio, prio;

	best = -1;
	bestprio = -100;
	for (i = 0; pcm_devclass != NULL &&
	    i < FUNC1(pcm_devclass); i++) {
		d = FUNC2(pcm_devclass, i);
		if (!FUNC0(d))
			continue;
		prio = 0;
		if (d->playcount == 0)
			prio -= 10;
		if (d->reccount == 0)
			prio -= 2;
		if (prio > bestprio || (prio == bestprio && i == old)) {
			best = i;
			bestprio = prio;
		}
	}
	return (best);
}