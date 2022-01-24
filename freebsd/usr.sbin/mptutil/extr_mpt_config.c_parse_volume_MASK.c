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
struct volume_info {int drive_count; struct drive_info* drives; } ;
struct drive_info {int /*<<< orphan*/ * sdisk; int /*<<< orphan*/ * info; } ;
struct config_id_state {int /*<<< orphan*/ * sdisks; int /*<<< orphan*/  nsdisks; int /*<<< orphan*/  list; } ;
typedef  int /*<<< orphan*/  U8 ;

/* Variables and functions */
 int EINVAL ; 
#define  RT_RAID0 130 
#define  RT_RAID1 129 
#define  RT_RAID1E 128 
 struct drive_info* FUNC0 (int,int) ; 
 int errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC5 (char*,char) ; 
 char* FUNC6 (char**,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

__attribute__((used)) static int
FUNC9(int fd, int raid_type, struct config_id_state *state,
    char *volume_str, struct volume_info *info)
{
	struct drive_info *dinfo;
	U8 PhysDiskNum;
	char *cp;
	int count, error, i;

	cp = volume_str;
	for (count = 0; cp != NULL; count++) {
		cp = FUNC5(cp, ',');
		if (cp != NULL) {
			cp++;
			if (*cp == ',') {
				FUNC8("Invalid drive list '%s'", volume_str);
				return (EINVAL);
			}
		}
	}

	/* Validate the number of drives for this volume. */
	switch (raid_type) {
	case RT_RAID0:
		if (count < 2) {
			FUNC8("RAID0 requires at least 2 drives in each "
			    "array");
			return (EINVAL);
		}
		break;
	case RT_RAID1:
		if (count != 2) {
			FUNC8("RAID1 requires exactly 2 drives in each "
			    "array");
			return (EINVAL);
		}
		break;
	case RT_RAID1E:
		if (count < 3) {
			FUNC8("RAID1E requires at least 3 drives in each "
			    "array");
			return (EINVAL);
		}
		break;
	}

	/* Validate each drive. */
	info->drives = FUNC0(count, sizeof(struct drive_info));
	info->drive_count = count;
	for (dinfo = info->drives; (cp = FUNC6(&volume_str, ",")) != NULL;
	     dinfo++) {
		/* If this drive is already a RAID phys just fetch the info. */
		error = FUNC2(state->list, cp, &PhysDiskNum);
		if (error == 0) {
			dinfo->info = FUNC4(fd, PhysDiskNum, NULL);
			if (dinfo->info == NULL)
				return (errno);
			continue;
		}

		/* See if it is a standalone disk. */
		if (FUNC3(cp, state->sdisks,
		    state->nsdisks, &i) < 0) {
			error = errno;
			FUNC7("Unable to lookup drive %s", cp);
			return (error);
		}
		dinfo->sdisk = &state->sdisks[i];

		/* Lock the disk, we will create phys disk pages later. */
		if (FUNC1(dinfo->sdisk) < 0)
			return (errno);
	}

	return (0);
}