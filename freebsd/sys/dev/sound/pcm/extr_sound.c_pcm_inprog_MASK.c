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
struct snddev_info {int inprog; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snddev_info*) ; 

int
FUNC1(struct snddev_info *d, int delta)
{
	FUNC0(d);

	d->inprog += delta;

	return (d->inprog);
}