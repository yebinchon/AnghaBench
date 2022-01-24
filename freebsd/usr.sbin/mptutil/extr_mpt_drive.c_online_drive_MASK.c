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
 int EINVAL ; 
 int /*<<< orphan*/  MPI_PHYSDISK0_STATUS_ONLINE ; 
 int /*<<< orphan*/  MPI_RAID_ACTION_PHYSDISK_ONLINE ; 
 int FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static int
FUNC2(int ac, char **av)
{

	if (ac != 2) {
		FUNC1("online: %s", ac > 2 ? "extra arguments" :
		    "drive required");
		return (EINVAL);
	}

	return (FUNC0(av[1], MPI_RAID_ACTION_PHYSDISK_ONLINE,
	    MPI_PHYSDISK0_STATUS_ONLINE, "ONLINE"));
}