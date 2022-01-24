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
typedef  int /*<<< orphan*/  U8 ;

/* Variables and functions */
 int EINVAL ; 
 int MPI_RAID_ACTION_ADATA_DEL_PHYS_DISKS ; 
 int MPI_RAID_ACTION_ADATA_ZERO_LBA0 ; 
 int /*<<< orphan*/  MPI_RAID_ACTION_DELETE_VOLUME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  mpt_unit ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int
FUNC9(int ac, char **av)
{
	U8 VolumeBus, VolumeID;
	int error, fd;

	if (ac != 2) {
		FUNC8("delete: volume required");
		return (EINVAL);
	}

	fd = FUNC3(mpt_unit);
	if (fd < 0) {
		error = errno;
		FUNC6("mpt_open");
		return (error);
	}

	error = FUNC2(fd, av[1], &VolumeBus, &VolumeID);
	if (error) {
		FUNC7(error, "Invalid volume %s", av[1]);
		FUNC0(fd);
		return (error);
	}

	if (FUNC1(VolumeBus, VolumeID) < 0) {
		FUNC0(fd);
		return (errno);
	}

	error = FUNC4(fd, MPI_RAID_ACTION_DELETE_VOLUME, VolumeBus,
	    VolumeID, 0, MPI_RAID_ACTION_ADATA_DEL_PHYS_DISKS |
	    MPI_RAID_ACTION_ADATA_ZERO_LBA0, NULL, 0, NULL, NULL, 0, NULL,
	    NULL, 0);
	if (error) {
		FUNC7(error, "Failed to delete volume");
		FUNC0(fd);
		return (error);
	}

	FUNC5(-1, -1);
	FUNC0(fd);

	return (0);
}