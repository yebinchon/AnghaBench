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
struct devstatlist {int dummy; } ;
struct devstat {int unit_number; int /*<<< orphan*/  sequence1; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  FUNC0 (struct devstatlist*,struct devstat*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  dev_links ; 
 struct devstatlist device_statq ; 
 int /*<<< orphan*/  devstat ; 
 int /*<<< orphan*/  FUNC2 (struct devstat*) ; 
 int /*<<< orphan*/  devstat_generation ; 
 int /*<<< orphan*/  devstat_mutex ; 
 int /*<<< orphan*/  devstat_num_devs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(struct devstat *ds)
{
	struct devstatlist *devstat_head;

	FUNC3(&devstat_mutex, MA_NOTOWNED);
	if (ds == NULL)
		return;

	FUNC4(&devstat_mutex);

	devstat_head = &device_statq;

	/* Remove this entry from the devstat queue */
	FUNC1(&ds->sequence1, 1);
	if (ds->unit_number != -1) {
		devstat_num_devs--;
		FUNC0(devstat_head, ds, devstat, dev_links);
	}
	FUNC2(ds);
	devstat_generation++;
	FUNC5(&devstat_mutex);
}