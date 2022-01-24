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
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 unsigned int PAGE_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/ * gnttab_pseudo_phys_res ; 
 int /*<<< orphan*/  gnttab_pseudo_phys_res_id ; 
 unsigned int FUNC2 () ; 
 unsigned int nr_grant_frames ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ resume_frames ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 

int
FUNC6(device_t dev)
{
	unsigned int max_nr_gframes, nr_gframes;

	nr_gframes = nr_grant_frames;
	max_nr_gframes = FUNC2();
	if (max_nr_gframes < nr_gframes)
		return (ENOSYS);

	if (!resume_frames) {
		FUNC0(dev != NULL,
		    ("No resume frames and no device provided"));

		gnttab_pseudo_phys_res = FUNC5(dev,
		    &gnttab_pseudo_phys_res_id, PAGE_SIZE * max_nr_gframes);
		if (gnttab_pseudo_phys_res == NULL)
			FUNC3("Unable to reserve physical memory for gnttab");
		resume_frames = FUNC4(gnttab_pseudo_phys_res);
	}

	return (FUNC1(0, nr_gframes - 1));
}