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
struct snd_clone_entry {int flags; int /*<<< orphan*/ * parent; } ;
struct cdev {struct snd_clone_entry* si_drv2; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int SND_CLONE_BUSY ; 
 int SND_CLONE_INVOKE ; 

int
FUNC1(struct cdev *dev)
{
	struct snd_clone_entry *ce;

	FUNC0(dev != NULL, ("NULL dev"));

	ce = dev->si_drv2;
	if (ce == NULL)
		return (ENODEV);

	FUNC0(ce->parent != NULL, ("NULL parent"));

	ce->flags &= ~SND_CLONE_INVOKE;

	if (ce->flags & SND_CLONE_BUSY)
		return (EBUSY);

	ce->flags |= SND_CLONE_BUSY;

	return (0);
}