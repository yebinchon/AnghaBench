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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct mfi_spare {int array_count; int /*<<< orphan*/ * array_ref; int /*<<< orphan*/  spare_type; int /*<<< orphan*/  array_size; scalar_t__ array; int /*<<< orphan*/  ref; } ;
struct mfi_pd_info {scalar_t__ fw_state; scalar_t__ coerced_size; int /*<<< orphan*/  ref; } ;
struct TYPE_3__ {int span_depth; } ;
struct mfi_ld_config {TYPE_2__* span; TYPE_1__ params; } ;
struct mfi_config_data {int array_count; int /*<<< orphan*/ * array_ref; int /*<<< orphan*/  spare_type; int /*<<< orphan*/  array_size; scalar_t__ array; int /*<<< orphan*/  ref; } ;
struct mfi_array {scalar_t__ size; int /*<<< orphan*/  array_ref; } ;
struct TYPE_4__ {int /*<<< orphan*/  array_ref; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  MFI_DCMD_CFG_MAKE_SPARE ; 
 scalar_t__ MFI_PD_STATE_UNCONFIGURED_GOOD ; 
 int /*<<< orphan*/  MFI_SPARE_DEDICATED ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (struct mfi_spare*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (struct mfi_spare*) ; 
 struct mfi_spare* FUNC3 (int) ; 
 struct mfi_array* FUNC4 (struct mfi_spare*,int /*<<< orphan*/ ) ; 
 struct mfi_ld_config* FUNC5 (struct mfi_spare*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,struct mfi_spare**) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,struct mfi_spare*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int,char*,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int,int /*<<< orphan*/ ,struct mfi_pd_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mfi_unit ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 

__attribute__((used)) static int
FUNC14(int ac, char **av)
{
	struct mfi_pd_info info;
	struct mfi_config_data *config;
	struct mfi_array *ar;
	struct mfi_ld_config *ld;
	struct mfi_spare *spare;
	uint16_t device_id;
	uint8_t target_id;
	char *p;
	int error, fd, i;

	if (ac < 2) {
		FUNC13("add spare: drive required");
		return (EINVAL);
	}

	fd = FUNC10(mfi_unit, O_RDWR);
	if (fd < 0) {
		error = errno;
		FUNC12("mfi_open");
		return (error);
	}

	config = NULL;
	spare = NULL;
	error = FUNC8(fd, av[1], &device_id);
	if (error)
		goto error;

	if (FUNC11(fd, device_id, &info, NULL) < 0) {
		error = errno;
		FUNC12("Failed to fetch drive info");
		goto error;
	}

	if (info.fw_state != MFI_PD_STATE_UNCONFIGURED_GOOD) {
		FUNC13("Drive %u is not available", device_id);
		error = EINVAL;
		goto error;
	}

	if (ac > 2) {
		if (FUNC9(fd, av[2], &target_id) < 0) {
			error = errno;
			FUNC12("Invalid volume %s", av[2]);
			goto error;
		}
	}

	if (FUNC6(fd, &config) < 0) {
		error = errno;
		FUNC12("Failed to read configuration");
		goto error;
	}

	spare = FUNC3(sizeof(struct mfi_spare) + sizeof(uint16_t) *
	    config->array_count);
	if (spare == NULL) {
		FUNC13("malloc failed");
		error = ENOMEM;
		goto error;
	}
	FUNC0(spare, sizeof(struct mfi_spare));
	spare->ref = info.ref;

	if (ac == 2) {
		/* Global spare backs all arrays. */
		p = (char *)config->array;
		for (i = 0; i < config->array_count; i++) {
			ar = (struct mfi_array *)p;
			if (ar->size > info.coerced_size) {
				FUNC13("Spare isn't large enough for array %u",
				    ar->array_ref);
				error = EINVAL;
				goto error;
			}
			p += config->array_size;
		}
		spare->array_count = 0;
	} else  {
		/*
		 * Dedicated spares only back the arrays for a
		 * specific volume.
		 */
		ld = FUNC5(config, target_id);
		if (ld == NULL) {
			FUNC13("Did not find volume %d", target_id);
			error = EINVAL;
			goto error;
		}

		spare->spare_type |= MFI_SPARE_DEDICATED;
		spare->array_count = ld->params.span_depth;
		for (i = 0; i < ld->params.span_depth; i++) {
			ar = FUNC4(config,
			    ld->span[i].array_ref);
			if (ar == NULL) {
				FUNC13("Missing array; inconsistent config?");
				error = ENXIO;
				goto error;
			}
			if (ar->size > info.coerced_size) {
				FUNC13("Spare isn't large enough for array %u",
				    ar->array_ref);
				error = EINVAL;
				goto error;
			}				
			spare->array_ref[i] = ar->array_ref;
		}
	}

	if (FUNC7(fd, MFI_DCMD_CFG_MAKE_SPARE, spare,
	    sizeof(struct mfi_spare) + sizeof(uint16_t) * spare->array_count,
	    NULL, 0, NULL) < 0) {
		error = errno;
		FUNC12("Failed to assign spare");
		/* FALLTHROUGH. */
	}

error:
	FUNC2(spare);
	FUNC2(config);
	FUNC1(fd);

	return (error);
}