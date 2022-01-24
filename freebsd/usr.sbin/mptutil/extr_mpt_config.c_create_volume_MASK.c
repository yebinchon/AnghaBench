#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int PageLength; } ;
struct volume_info {int /*<<< orphan*/  VolumeID; int /*<<< orphan*/  VolumeBus; TYPE_1__ Header; } ;
struct config_id_state {int target_id; struct volume_info* ioc2; int /*<<< orphan*/ * list; struct volume_info* sdisks; int /*<<< orphan*/  nsdisks; } ;
struct TYPE_4__ {int raid_type; int /*<<< orphan*/ * name; } ;
typedef  struct volume_info CONFIG_PAGE_RAID_VOL_0 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MPI_RAID_ACTION_ADATA_DO_NOT_SYNC ; 
 int /*<<< orphan*/  MPI_RAID_ACTION_CREATE_VOLUME ; 
 int FUNC0 (int,struct volume_info*,int) ; 
 struct volume_info* FUNC1 (int,struct volume_info*,int,long,struct config_id_state*,int) ; 
 struct volume_info* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct volume_info*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC6 (struct volume_info*) ; 
 int FUNC7 (int,char**,char*) ; 
 int FUNC8 (int,int /*<<< orphan*/ *,struct volume_info**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int) ; 
 int FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct volume_info*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct volume_info* FUNC13 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mpt_unit ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 int FUNC15 (int,int,struct config_id_state*,char*,struct volume_info*) ; 
 int /*<<< orphan*/  FUNC16 (long) ; 
 TYPE_2__* raid_type_table ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 

__attribute__((used)) static int
FUNC20(int ac, char **av)
{
	CONFIG_PAGE_RAID_VOL_0 *vol;
	struct config_id_state state;
	struct volume_info *info;
	long stripe_size;
	int ch, error, fd, i, quick, raid_type, verbose;
#ifdef DEBUG
	int dump;
#endif

	if (ac < 2) {
		FUNC19("create: volume type required");
		return (EINVAL);
	}
	
	fd = FUNC10(mpt_unit);
	if (fd < 0) {
		error = errno;
		FUNC18("mpt_open");
		return (error);
	}

	/* Lookup the RAID type first. */
	raid_type = -1;
	for (i = 0; raid_type_table[i].name != NULL; i++)
		if (FUNC17(raid_type_table[i].name, av[1]) == 0) {
			raid_type = raid_type_table[i].raid_type;
			break;
		}

	if (raid_type == -1) {
		FUNC19("Unknown or unsupported volume type %s", av[1]);
		FUNC3(fd);
		return (EINVAL);
	}

	/* Parse any options. */
	optind = 2;
#ifdef DEBUG
	dump = 0;
#endif
	quick = 0;
	verbose = 0;
	stripe_size = 64 * 1024;

	while ((ch = FUNC7(ac, av, "dqs:v")) != -1) {
		switch (ch) {
#ifdef DEBUG
		case 'd':
			dump = 1;
			break;
#endif
		case 'q':
			quick = 1;
			break;
		case 's':
			stripe_size = FUNC4(optarg);
			if ((stripe_size < 512) || (!FUNC16(stripe_size))) {
				FUNC19("Invalid stripe size %s", optarg);
				FUNC3(fd);
				return (EINVAL);
			}
			break;
		case 'v':
			verbose = 1;
			break;
		case '?':
		default:
			FUNC3(fd);
			return (EINVAL);
		}
	}
	ac -= optind;
	av += optind;

	/* Fetch existing config data. */
	state.ioc2 = FUNC13(fd, 2, NULL);
	if (state.ioc2 == NULL) {
		error = errno;
		FUNC18("Failed to read volume list");
		FUNC3(fd);
		return (error);
	}
	state.list = FUNC11(fd);
	if (state.list == NULL) {
		FUNC3(fd);
		return (errno);
	}
	error = FUNC8(fd, &state.nsdisks, &state.sdisks);
	if (error) {
		FUNC18("Failed to fetch standalone disk list");
		FUNC3(fd);
		return (error);
	}	
	state.target_id = 0xff;
	
	/* Parse the drive list. */
	if (ac != 1) {
		FUNC19("Exactly one drive list is required");
		FUNC3(fd);
		return (EINVAL);
	}
	info = FUNC2(1, sizeof(*info));
	if (info == NULL) {
		FUNC3(fd);
		return (ENOMEM);
	}
	error = FUNC15(fd, raid_type, &state, av[0], info);
	if (error) {
		FUNC6(info);
		FUNC3(fd);
		return (error);
	}

	/* Create RAID physdisk pages for standalone disks. */
	error = FUNC0(fd, info, verbose);
	if (error) {
		FUNC6(info);
		FUNC3(fd);
		return (error);
	}

	/* Build the volume. */
	vol = FUNC1(fd, info, raid_type, stripe_size, &state, verbose);
	if (vol == NULL) {
		FUNC6(info);
		FUNC3(fd);
		return (errno);
	}

#ifdef DEBUG
	if (dump) {
		dump_config(vol);
		goto skip;
	}
#endif

	/* Send the new volume to the controller. */
	error = FUNC12(fd, MPI_RAID_ACTION_CREATE_VOLUME, vol->VolumeBus,
	    vol->VolumeID, 0, quick ? MPI_RAID_ACTION_ADATA_DO_NOT_SYNC : 0,
	    vol, vol->Header.PageLength * 4, NULL, NULL, 0, NULL, NULL, 1);
	if (error) {
		errno = error;
		FUNC18("Failed to add volume");
		FUNC6(info);
		FUNC3(fd);
		return (error);
	}

#ifdef DEBUG
skip:
#endif
	FUNC14(vol->VolumeBus, vol->VolumeID);

	/* Clean up. */
	FUNC6(vol);
	FUNC6(info);
	FUNC6(state.sdisks);
	FUNC9(state.list);
	FUNC6(state.ioc2);
	FUNC3(fd);

	return (0);
}