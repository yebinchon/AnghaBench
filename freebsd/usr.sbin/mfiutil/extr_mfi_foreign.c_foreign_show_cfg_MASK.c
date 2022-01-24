#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int uint16_t ;
struct TYPE_6__ {int span_depth; int /*<<< orphan*/  primary_raid_level; int /*<<< orphan*/  stripe_size; } ;
struct mfi_ld_config {TYPE_2__* span; TYPE_1__ params; } ;
struct mfi_config_data {int array_count; int log_drv_count; int spares_count; int array_size; int /*<<< orphan*/  log_drv_size; scalar_t__ array; } ;
struct mfi_array {int num_drives; TYPE_5__* pd; } ;
typedef  int /*<<< orphan*/  stripe ;
typedef  int /*<<< orphan*/  size ;
typedef  int /*<<< orphan*/  mbox ;
struct TYPE_8__ {int device_id; } ;
struct TYPE_9__ {TYPE_3__ v; } ;
struct TYPE_10__ {int /*<<< orphan*/  fw_state; TYPE_4__ ref; } ;
struct TYPE_7__ {int num_blocks; int array_ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  HN_AUTOSCALE ; 
 int HN_B ; 
 int HN_DECIMAL ; 
 int HN_NOSPACE ; 
 scalar_t__ MFI_DCMD_CFG_FOREIGN_PREVIEW ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct mfi_config_data*,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mfi_config_data*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int,scalar_t__,struct mfi_config_data**,int*,int) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 

__attribute__((used)) static int
FUNC12(int fd, uint32_t opcode, uint8_t cfgidx, int diagnostic)
{
	struct mfi_config_data *config;
	char prefix[64];
	int error;
	uint8_t mbox[4];

	FUNC0(mbox, sizeof(mbox));
	mbox[0] = cfgidx;
	if (FUNC6(fd, opcode, &config, mbox, sizeof(mbox)) < 0) {
		error = errno;
		FUNC11("Failed to get foreign config %d", error);
		FUNC1(fd);
		return (error);
	}

	if (opcode == MFI_DCMD_CFG_FOREIGN_PREVIEW)
		FUNC10(prefix, "Foreign configuration preview %d", cfgidx);
	else
		FUNC10(prefix, "Foreign configuration %d", cfgidx);
	/*
	 * MegaCli uses DCMD opcodes: 0x03100200 (which fails) followed by
	 * 0x1a721880 which returns what looks to be drive / volume info
	 * but we have no real information on what these are or what they do
	 * so we're currently relying solely on the config returned above
	 */
	if (diagnostic)
		FUNC2(fd, config, prefix);
	else {
		char *ld_list;
		int i;

		ld_list = (char *)(config->array);

        	FUNC9("%s: %d arrays, %d volumes, %d spares\n", prefix, 
		       config->array_count, config->log_drv_count,
		       config->spares_count);


		for (i = 0; i < config->array_count; i++)
			 ld_list += config->array_size;

		for (i = 0; i < config->log_drv_count; i++) {
        		const char *level;
        		char size[6], stripe[5];
			struct mfi_ld_config *ld;

			ld = (struct mfi_ld_config *)ld_list;

        		FUNC3(stripe, sizeof(stripe),
            			ld->params.stripe_size);
			/*
			 * foreign configs don't seem to have a secondary raid level
			 * but, we can use span depth here as if a LD spans multiple
			 * arrays of disks (2 raid 1 sets for example), we will have an
			 * indication based on the spam depth. swb
			 */ 
        		level = FUNC8(ld->params.primary_raid_level,
            					(ld->params.span_depth - 1));

        		FUNC5(size, sizeof(size), ld->span[0].num_blocks * 512,
            			"", HN_AUTOSCALE, HN_B | HN_NOSPACE | HN_DECIMAL);

			FUNC9(" ID%d ", i);
              		FUNC9("(%6s) %-8s |",
				size, level);
			FUNC9("volume spans %d %s\n",	ld->params.span_depth,
							(ld->params.span_depth > 1) ? "arrays" : "array");
			for (int j = 0; j < ld->params.span_depth; j++) {
				char *ar_list;
				struct mfi_array *ar;
				uint16_t device_id;

				FUNC9("      array %u @ ", ld->span[j].array_ref);
        			FUNC5(size, sizeof(size), ld->span[j].num_blocks * 512,
            				"", HN_AUTOSCALE, HN_B | HN_NOSPACE | HN_DECIMAL);
				
				FUNC9("(%6s)\n",size);
				ar_list = (char *)config->array + (ld->span[j].array_ref * config->array_size);

				ar = (struct mfi_array *)ar_list;
				for (int k = 0; k < ar->num_drives; k++) {
					device_id = ar->pd[k].ref.v.device_id;
					if (device_id == 0xffff)
						FUNC9("        drive MISSING\n");
					else {
						FUNC9("        drive %u %s\n", device_id,
			    				FUNC7(ar->pd[k].fw_state));
					}
				}

			}
			ld_list += config->log_drv_size;
		}
	}

	FUNC4(config);

	return (0);
}