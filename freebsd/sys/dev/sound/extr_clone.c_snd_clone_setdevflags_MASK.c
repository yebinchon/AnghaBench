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
typedef  int uint32_t ;
struct snd_clone_entry {int flags; int /*<<< orphan*/ * parent; } ;
struct cdev {struct snd_clone_entry* si_drv2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int SND_CLONE_DEVMASK ; 

uint32_t
FUNC1(struct cdev *dev, uint32_t flags)
{
	struct snd_clone_entry *ce;

	FUNC0(dev != NULL, ("NULL dev"));
	FUNC0(!(flags & ~SND_CLONE_DEVMASK),
	    ("invalid clone dev flags=0x%08x", flags));

	ce = dev->si_drv2;
	if (ce == NULL)
		return (0xffffffff);

	FUNC0(ce->parent != NULL, ("NULL parent"));

	ce->flags = flags;

	return (ce->flags);
}