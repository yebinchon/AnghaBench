#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mfi_config_data {int array_count; int array_size; int log_drv_count; int log_drv_size; size_t size; int spares_size; struct mfi_config_data* drives; scalar_t__ array; scalar_t__ spares_count; int /*<<< orphan*/  drive_count; } ;
struct TYPE_5__ {struct mfi_config_data target_id; } ;
struct TYPE_6__ {TYPE_1__ v; } ;
struct TYPE_7__ {TYPE_2__ ld; } ;
struct mfi_ld_config {TYPE_3__ properties; } ;
struct mfi_array {struct mfi_config_data array_ref; } ;
struct config_id_state {int array_ref; int target_id; int array_count; int log_drv_count; struct mfi_config_data* arrays; struct mfi_config_data* volumes; } ;
struct array_info {int array_count; int array_size; int log_drv_count; int log_drv_size; size_t size; int spares_size; struct array_info* drives; scalar_t__ array; scalar_t__ spares_count; int /*<<< orphan*/  drive_count; } ;
typedef  int /*<<< orphan*/  state ;
struct TYPE_8__ {int raid_type; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int MFI_ARRAY_SIZE ; 
 int /*<<< orphan*/  MFI_DCMD_CFG_ADD ; 
 int MFI_MAX_SPAN_DEPTH ; 
 int /*<<< orphan*/  O_RDWR ; 
#define  RT_CONCAT 136 
#define  RT_JBOD 135 
#define  RT_RAID0 134 
#define  RT_RAID1 133 
#define  RT_RAID10 132 
#define  RT_RAID5 131 
#define  RT_RAID50 130 
#define  RT_RAID6 129 
#define  RT_RAID60 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int,char**) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,struct mfi_config_data*,struct config_id_state*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,struct mfi_config_data*,int,long,struct config_id_state*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct config_id_state*,int) ; 
 void* FUNC5 (int,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  compare_int ; 
 long FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,struct mfi_config_data*,int /*<<< orphan*/ *) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC9 (struct mfi_config_data*) ; 
 int FUNC10 (int,char**,char*) ; 
 scalar_t__ FUNC11 (int,struct mfi_config_data**) ; 
 scalar_t__ FUNC12 (int,int /*<<< orphan*/ ,struct mfi_config_data*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  mfi_unit ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 int FUNC15 (int,int,char*,struct mfi_config_data*) ; 
 int /*<<< orphan*/  FUNC16 (long) ; 
 int /*<<< orphan*/  FUNC17 (struct mfi_config_data*,int,int,int /*<<< orphan*/ ) ; 
 TYPE_4__* raid_type_table ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC19 (char*,char*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (char*,...) ; 

__attribute__((used)) static int
FUNC22(int ac, char **av)
{
	struct mfi_config_data *config;
	struct mfi_array *ar;
	struct mfi_ld_config *ld;
	struct config_id_state state;
	size_t config_size;
	char *p, *cfg_arrays, *cfg_volumes;
	int error, fd, i, raid_type;
	int narrays, nvolumes, arrays_per_volume;
	struct array_info *arrays;
	long stripe_size;
#ifdef DEBUG
	int dump;
#endif
	int ch, verbose;

	/*
	 * Backwards compat.  Map 'create volume' to 'create' and
	 * 'create spare' to 'add'.
	 */
	if (ac > 1) {
		if (FUNC19(av[1], "volume") == 0) {
			av++;
			ac--;
		} else if (FUNC19(av[1], "spare") == 0) {
			av++;
			ac--;
			return (FUNC1(ac, av));
		}
	}

	if (ac < 2) {
		FUNC21("create volume: volume type required");
		return (EINVAL);
	}

	FUNC4(&state, sizeof(state));
	config = NULL;
	arrays = NULL;
	narrays = 0;
	error = 0;

	fd = FUNC13(mfi_unit, O_RDWR);
	if (fd < 0) {
		error = errno;
		FUNC20("mfi_open");
		return (error);
	}

	if (!FUNC14()) {
		FUNC21("The current mfi(4) driver does not support "
		    "configuration changes.");
		error = EOPNOTSUPP;
		goto error;
	}

	/* Lookup the RAID type first. */
	raid_type = -1;
	for (i = 0; raid_type_table[i].name != NULL; i++)
		if (FUNC18(raid_type_table[i].name, av[1]) == 0) {
			raid_type = raid_type_table[i].raid_type;
			break;
		}

	if (raid_type == -1) {
		FUNC21("Unknown or unsupported volume type %s", av[1]);
		error = EINVAL;
		goto error;
	}

	/* Parse any options. */
	optind = 2;
#ifdef DEBUG
	dump = 0;
#endif
	verbose = 0;
	stripe_size = 64 * 1024;

	while ((ch = FUNC10(ac, av, "ds:v")) != -1) {
		switch (ch) {
#ifdef DEBUG
		case 'd':
			dump = 1;
			break;
#endif
		case 's':
			stripe_size = FUNC7(optarg);
			if ((stripe_size < 512) || (!FUNC16(stripe_size)))
				stripe_size = 64 * 1024;
			break;
		case 'v':
			verbose = 1;
			break;
		case '?':
		default:
			error = EINVAL;
			goto error;
		}
	}
	ac -= optind;
	av += optind;

	/* Parse all the arrays. */
	narrays = ac;
	if (narrays == 0) {
		FUNC21("At least one drive list is required");
		error = EINVAL;
		goto error;
	}
	switch (raid_type) {
	case RT_RAID0:
	case RT_RAID1:
	case RT_RAID5:
	case RT_RAID6:
	case RT_CONCAT:
		if (narrays != 1) {
			FUNC21("Only one drive list can be specified");
			error = EINVAL;
			goto error;
		}
		break;
	case RT_RAID10:
	case RT_RAID50:
	case RT_RAID60:
		if (narrays < 1) {
			FUNC21("RAID10, RAID50, and RAID60 require at least "
			    "two drive lists");
			error = EINVAL;
			goto error;
		}
		if (narrays > MFI_MAX_SPAN_DEPTH) {
			FUNC21("Volume spans more than %d arrays",
			    MFI_MAX_SPAN_DEPTH);
			error = EINVAL;
			goto error;
		}
		break;
	}
	arrays = FUNC5(narrays, sizeof(*arrays));
	if (arrays == NULL) {
		FUNC21("malloc failed");
		error = ENOMEM;
		goto error;
	}
	for (i = 0; i < narrays; i++) {
		error = FUNC15(fd, raid_type, av[i], &arrays[i]);
		if (error)
			goto error;
	}

	switch (raid_type) {
	case RT_RAID10:
	case RT_RAID50:
	case RT_RAID60:
		for (i = 1; i < narrays; i++) {
			if (arrays[i].drive_count != arrays[0].drive_count) {
				FUNC21("All arrays must contain the same "
				    "number of drives");
				error = EINVAL;
				goto error;
			}
		}
		break;
	}

	/*
	 * Fetch the current config and build sorted lists of existing
	 * array and volume identifiers.
	 */
	if (FUNC11(fd, &config) < 0) {
		error = errno;
		FUNC20("Failed to read configuration");
		goto error;
	}
	p = (char *)config->array;
	state.array_ref = 0xffff;
	state.target_id = 0xff;
	state.array_count = config->array_count;
	if (config->array_count > 0) {
		state.arrays = FUNC5(config->array_count, sizeof(int));
		if (state.arrays == NULL) {
			FUNC21("malloc failed");
			error = ENOMEM;
			goto error;
		}
		for (i = 0; i < config->array_count; i++) {
			ar = (struct mfi_array *)p;
			state.arrays[i] = ar->array_ref;
			p += config->array_size;
		}
		FUNC17(state.arrays, config->array_count, sizeof(int),
		    compare_int);
	} else
		state.arrays = NULL;
	state.log_drv_count = config->log_drv_count;
	if (config->log_drv_count) {
		state.volumes = FUNC5(config->log_drv_count, sizeof(int));
		if (state.volumes == NULL) {
			FUNC21("malloc failed");
			error = ENOMEM;
			goto error;
		}
		for (i = 0; i < config->log_drv_count; i++) {
			ld = (struct mfi_ld_config *)p;
			state.volumes[i] = ld->properties.ld.v.target_id;
			p += config->log_drv_size;
		}
		FUNC17(state.volumes, config->log_drv_count, sizeof(int),
		    compare_int);
	} else
		state.volumes = NULL;
	FUNC9(config);

	/* Determine the size of the configuration we will build. */
	switch (raid_type) {
	case RT_RAID0:
	case RT_RAID1:
	case RT_RAID5:
	case RT_RAID6:
	case RT_CONCAT:
	case RT_JBOD:
		/* Each volume spans a single array. */
		nvolumes = narrays;
		break;
	case RT_RAID10:
	case RT_RAID50:
	case RT_RAID60:
		/* A single volume spans multiple arrays. */
		nvolumes = 1;
		break;
	default:
		/* Pacify gcc. */
		FUNC0();
	}

	config_size = sizeof(struct mfi_config_data) +
	    sizeof(struct mfi_ld_config) * nvolumes + MFI_ARRAY_SIZE * narrays;
	config = FUNC5(1, config_size);
	if (config == NULL) {
		FUNC21("malloc failed");
		error = ENOMEM;
		goto error;
	}
	config->size = config_size;
	config->array_count = narrays;
	config->array_size = MFI_ARRAY_SIZE;	/* XXX: Firmware hardcode */
	config->log_drv_count = nvolumes;
	config->log_drv_size = sizeof(struct mfi_ld_config);
	config->spares_count = 0;
	config->spares_size = 40;		/* XXX: Firmware hardcode */
	cfg_arrays = (char *)config->array;
	cfg_volumes = cfg_arrays + config->array_size * narrays;

	/* Build the arrays. */
	for (i = 0; i < narrays; i++) {
		FUNC2(fd, cfg_arrays, &arrays[i], &state, verbose);
		cfg_arrays += config->array_size;
	}

	/* Now build the volume(s). */
	arrays_per_volume = narrays / nvolumes;
	for (i = 0; i < nvolumes; i++) {
		FUNC3(cfg_volumes, arrays_per_volume,
		    &arrays[i * arrays_per_volume], raid_type, stripe_size,
		    &state, verbose);
		cfg_volumes += config->log_drv_size;
	}

#ifdef DEBUG
	if (dump)
		dump_config(fd, config, NULL);
#endif

	/* Send the new config to the controller. */
	if (FUNC12(fd, MFI_DCMD_CFG_ADD, config, config_size,
	    NULL, 0, NULL) < 0) {
		error = errno;
		FUNC20("Failed to add volume");
		/* FALLTHROUGH */
	}

error:
	/* Clean up. */
	FUNC9(config);
	FUNC9(state.volumes);
	FUNC9(state.arrays);
	if (arrays != NULL) {
		for (i = 0; i < narrays; i++)
			FUNC9(arrays[i].drives);
		FUNC9(arrays);
	}
	FUNC6(fd);

	return (error);
}