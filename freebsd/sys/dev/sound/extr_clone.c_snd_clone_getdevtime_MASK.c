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
struct timespec {int dummy; } ;
struct snd_clone_entry {struct timespec tsp; int /*<<< orphan*/ * parent; } ;
struct cdev {struct snd_clone_entry* si_drv2; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 

int
FUNC1(struct cdev *dev, struct timespec *tsp)
{
	struct snd_clone_entry *ce;

	FUNC0(dev != NULL, ("NULL dev"));
	FUNC0(tsp != NULL, ("NULL timespec"));

	ce = dev->si_drv2;
	if (ce == NULL)
		return (ENODEV);

	FUNC0(ce->parent != NULL, ("NULL parent"));

	*tsp = ce->tsp;

	return (0);
}