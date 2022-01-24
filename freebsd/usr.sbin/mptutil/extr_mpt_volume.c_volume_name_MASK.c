#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U8 ;
struct TYPE_6__ {scalar_t__ PageType; } ;
struct TYPE_7__ {char* Name; TYPE_1__ Header; } ;
typedef  TYPE_2__ CONFIG_PAGE_RAID_VOL_1 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSPC ; 
 int EOPNOTSUPP ; 
 scalar_t__ MPI_CONFIG_PAGEATTR_CHANGEABLE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int) ; 
 int mpt_unit ; 
 TYPE_2__* FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static int
FUNC14(int ac, char **av)
{
	CONFIG_PAGE_RAID_VOL_1 *vnames;
	U8 VolumeBus, VolumeID;
	int error, fd;

	if (ac != 3) {
		FUNC13("name: volume and name required");
		return (EINVAL);
	}

	if (FUNC10(av[2]) >= sizeof(vnames->Name)) {
		FUNC13("name: new name is too long");
		return (ENOSPC);
	}

	fd = FUNC4(mpt_unit);
	if (fd < 0) {
		error = errno;
		FUNC11("mpt_open");
		return (error);
	}

	error = FUNC3(fd, av[1], &VolumeBus, &VolumeID);
	if (error) {
		FUNC12(error, "Invalid volume: %s", av[1]);
		return (error);
	}

	vnames = FUNC5(fd, VolumeBus, VolumeID, NULL);
	if (vnames == NULL) {
		error = errno;
		FUNC11("Failed to fetch volume names");
		FUNC1(fd);
		return (error);
	}

	if (vnames->Header.PageType != MPI_CONFIG_PAGEATTR_CHANGEABLE) {
		FUNC13("Volume name is read only");
		FUNC2(vnames);
		FUNC1(fd);
		return (EOPNOTSUPP);
	}
	FUNC8("mpt%u changing volume %s name from \"%s\" to \"%s\"\n",
	    mpt_unit, FUNC6(VolumeBus, VolumeID), vnames->Name,
	    av[2]);
	FUNC0(vnames->Name, sizeof(vnames->Name));
	FUNC9(vnames->Name, av[2]);

	if (FUNC7(fd, vnames, NULL) < 0) {
		error = errno;
		FUNC11("Failed to set volume name");
		FUNC2(vnames);
		FUNC1(fd);
		return (error);
	}

	FUNC2(vnames);
	FUNC1(fd);

	return (0);
}