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
struct snddev_info {int playcount; int reccount; scalar_t__ pvchancount; scalar_t__ rvchancount; int /*<<< orphan*/  clones; } ;

/* Variables and functions */
 int PCMMAXCLONE ; 
 int /*<<< orphan*/  FUNC0 (struct snddev_info*) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  snd_maxautovchans ; 

__attribute__((used)) static void
FUNC4(struct snddev_info *d)
{
	int cmax;

	FUNC0(d);

	cmax = d->playcount + d->reccount - 1;
	if (d->pvchancount > 0)
		cmax += FUNC1(d->pvchancount, snd_maxautovchans) - 1;
	if (d->rvchancount > 0)
		cmax += FUNC1(d->rvchancount, snd_maxautovchans) - 1;
	if (cmax > PCMMAXCLONE)
		cmax = PCMMAXCLONE;
	(void)FUNC2(d->clones);
	(void)FUNC3(d->clones, cmax);
}