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
struct snddev_info {int flags; scalar_t__ playcount; scalar_t__ reccount; int /*<<< orphan*/ * clones; int /*<<< orphan*/  status; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct snddev_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct snddev_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct snddev_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct snddev_info*) ; 
 int SD_F_AUTOVCHAN ; 
 int SD_F_REGISTERED ; 
 int SD_F_SIMPLEX ; 
 int /*<<< orphan*/  SND_STATUSLEN ; 
 struct snddev_info* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct snddev_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  snd_maxautovchans ; 
 scalar_t__ snd_unit ; 
 int snd_unit_auto ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int
FUNC11(device_t dev, char *str)
{
	struct snddev_info *d = FUNC4(dev);

	/* should only be called once */
	if (d->flags & SD_F_REGISTERED)
		return (EINVAL);

	FUNC0(d);

	if (d->playcount == 0 || d->reccount == 0)
		d->flags |= SD_F_SIMPLEX;

	if (d->playcount > 0 || d->reccount > 0)
		d->flags |= SD_F_AUTOVCHAN;

	FUNC7(d, snd_maxautovchans);

	FUNC10(d->status, str, SND_STATUSLEN);

	FUNC1(d);

	/* Last stage, enable cloning. */
	if (d->clones != NULL)
		(void)FUNC9(d->clones);

	/* Done, we're ready.. */
	d->flags |= SD_F_REGISTERED;

	FUNC2(d);

	FUNC3(d);

	/*
	 * Create all sysctls once SD_F_REGISTERED is set else
	 * tunable sysctls won't work:
	 */
	FUNC8(dev);

	if (snd_unit_auto < 0)
		snd_unit_auto = (snd_unit < 0) ? 1 : 0;
	if (snd_unit < 0 || snd_unit_auto > 1)
		snd_unit = FUNC5(dev);
	else if (snd_unit_auto == 1)
		snd_unit = FUNC6(snd_unit);

	return (0);
}