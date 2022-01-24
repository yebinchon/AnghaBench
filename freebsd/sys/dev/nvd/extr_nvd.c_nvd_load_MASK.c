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

/* Variables and functions */
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * consumer_handle ; 
 int /*<<< orphan*/  ctrlr_head ; 
 int /*<<< orphan*/  disk_head ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvd_controller_fail ; 
 int /*<<< orphan*/  nvd_lock ; 
 int /*<<< orphan*/  nvd_new_controller ; 
 int /*<<< orphan*/  nvd_new_disk ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvme_use_nvd ; 

__attribute__((used)) static int
FUNC3()
{
	if (!nvme_use_nvd)
		return 0;

	FUNC1(&nvd_lock, "nvd_lock", NULL, MTX_DEF);
	FUNC0(&ctrlr_head);
	FUNC0(&disk_head);

	consumer_handle = FUNC2(nvd_new_disk,
	    nvd_new_controller, NULL, nvd_controller_fail);

	return (consumer_handle != NULL ? 0 : -1);
}