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
struct snd_clone_entry {int flags; scalar_t__ unit; struct cdev* devt; int /*<<< orphan*/ * parent; } ;
struct cdev {struct snd_clone_entry* si_drv2; } ;

/* Variables and functions */
 int SND_CLONE_ALLOC ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int SND_CLONE_INVOKE ; 
 scalar_t__ FUNC1 (struct cdev*) ; 

void
FUNC2(struct snd_clone_entry *ce, struct cdev *dev)
{
	FUNC0(ce != NULL, ("NULL snd_clone_entry"));
	FUNC0(dev != NULL, ("NULL dev"));
	FUNC0(dev->si_drv2 == NULL, ("dev->si_drv2 not NULL"));
	FUNC0((ce->flags & SND_CLONE_ALLOC) == SND_CLONE_ALLOC,
	    ("invalid clone alloc flags=0x%08x", ce->flags));
	FUNC0(ce->devt == NULL, ("ce->devt not NULL"));
	FUNC0(ce->unit == FUNC1(dev),
	    ("invalid unit ce->unit=0x%08x dev2unit=0x%08x",
	    ce->unit, FUNC1(dev)));

	FUNC0(ce->parent != NULL, ("NULL parent"));

	dev->si_drv2 = ce;
	ce->devt = dev;
	ce->flags &= ~SND_CLONE_ALLOC;
	ce->flags |= SND_CLONE_INVOKE;
}