#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct intel_raid_vol {char* name; int reserved; int migr_priority; int num_sub_vols; int tid; int cng_master_disk; int cache_policy; int cng_state; int cng_sub_state; int curr_migr_unit; int curr_migr_unit_hi; int checkpoint_id; int migr_state; int migr_type; int dirty; int fs_state; int verify_errors; int bad_blocks; int /*<<< orphan*/  state; int /*<<< orphan*/  total_sectors; } ;
struct intel_raid_map {int offset; int offset_hi; int disk_sectors; int disk_sectors_hi; int stripe_count; int stripe_count_hi; int strip_sectors; int status; int type; int total_disks; int total_domains; int failed_disk_num; int ddf; int* disk_idx; } ;
struct intel_raid_conf {char* intel_id; char* version; int checksum; int config_size; int config_id; int generation; int error_log_size; int total_disks; int total_volumes; int error_log_pos; int cache_size; int orig_config_id; int pwr_cycle_count; int bbm_log_size; TYPE_1__* disk; int /*<<< orphan*/  attributes; } ;
struct TYPE_2__ {char* serial; int sectors; int sectors_hi; int id; int /*<<< orphan*/  owner_cfg_num; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int g_raid_debug ; 
 char* FUNC0 (int) ; 
 struct intel_raid_map* FUNC1 (struct intel_raid_vol*,int) ; 
 struct intel_raid_vol* FUNC2 (struct intel_raid_conf*,int) ; 
 char* FUNC3 (int) ; 
 char* FUNC4 (int) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static void
FUNC7(struct intel_raid_conf *meta)
{
	struct intel_raid_vol *mvol;
	struct intel_raid_map *mmap;
	int i, j, k;

	if (g_raid_debug < 1)
		return;

	FUNC6("********* ATA Intel MatrixRAID Metadata *********\n");
	FUNC6("intel_id            <%.24s>\n", meta->intel_id);
	FUNC6("version             <%.6s>\n", meta->version);
	FUNC6("checksum            0x%08x\n", meta->checksum);
	FUNC6("config_size         0x%08x\n", meta->config_size);
	FUNC6("config_id           0x%08x\n", meta->config_id);
	FUNC6("generation          0x%08x\n", meta->generation);
	FUNC6("error_log_size      %d\n", meta->error_log_size);
	FUNC6("attributes          0x%b\n", meta->attributes,
		"\020"
		"\001RAID0"
		"\002RAID1"
		"\003RAID10"
		"\004RAID1E"
		"\005RAID15"
		"\006RAIDCNG"
		"\007EXT_STRIP"
		"\032NVM_CACHE"
		"\0332TB_DISK"
		"\034BBM"
		"\035NVM_CACHE"
		"\0362TB"
		"\037PM"
		"\040CHECKSUM");
	FUNC6("total_disks         %u\n", meta->total_disks);
	FUNC6("total_volumes       %u\n", meta->total_volumes);
	FUNC6("error_log_pos       %u\n", meta->error_log_pos);
	FUNC6("cache_size          %u\n", meta->cache_size);
	FUNC6("orig_config_id      0x%08x\n", meta->orig_config_id);
	FUNC6("pwr_cycle_count     %u\n", meta->pwr_cycle_count);
	FUNC6("bbm_log_size        %u\n", meta->bbm_log_size);
	FUNC6("Flags: S - Spare, A - Assigned, F - Failed, O - Online, D - Disabled\n");
	FUNC6("DISK#   serial disk_sectors disk_sectors_hi disk_id flags owner\n");
	for (i = 0; i < meta->total_disks; i++ ) {
		FUNC6("    %d   <%.16s> %u %u 0x%08x 0x%b %08x\n", i,
		    meta->disk[i].serial, meta->disk[i].sectors,
		    meta->disk[i].sectors_hi, meta->disk[i].id,
		    meta->disk[i].flags, "\20\01S\02A\03F\04O\05D",
		    meta->disk[i].owner_cfg_num);
	}
	for (i = 0; i < meta->total_volumes; i++) {
		mvol = FUNC2(meta, i);
		FUNC6(" ****** Volume %d ******\n", i);
		FUNC6(" name               %.16s\n", mvol->name);
		FUNC6(" total_sectors      %ju\n", mvol->total_sectors);
		FUNC6(" state              0x%b\n", mvol->state,
			"\020"
			"\001BOOTABLE"
			"\002BOOT_DEVICE"
			"\003READ_COALESCING"
			"\004WRITE_COALESCING"
			"\005LAST_SHUTDOWN_DIRTY"
			"\006HIDDEN_AT_BOOT"
			"\007CURRENTLY_HIDDEN"
			"\010VERIFY_AND_FIX"
			"\011MAP_STATE_UNINIT"
			"\012NO_AUTO_RECOVERY"
			"\013CLONE_N_GO"
			"\014CLONE_MAN_SYNC"
			"\015CNG_MASTER_DISK_NUM");
		FUNC6(" reserved           %u\n", mvol->reserved);
		FUNC6(" migr_priority      %u\n", mvol->migr_priority);
		FUNC6(" num_sub_vols       %u\n", mvol->num_sub_vols);
		FUNC6(" tid                %u\n", mvol->tid);
		FUNC6(" cng_master_disk    %u\n", mvol->cng_master_disk);
		FUNC6(" cache_policy       %u\n", mvol->cache_policy);
		FUNC6(" cng_state          %u (%s)\n", mvol->cng_state,
			FUNC0(mvol->cng_state));
		FUNC6(" cng_sub_state      %u\n", mvol->cng_sub_state);
		FUNC6(" curr_migr_unit     %u\n", mvol->curr_migr_unit);
		FUNC6(" curr_migr_unit_hi  %u\n", mvol->curr_migr_unit_hi);
		FUNC6(" checkpoint_id      %u\n", mvol->checkpoint_id);
		FUNC6(" migr_state         %u\n", mvol->migr_state);
		FUNC6(" migr_type          %u (%s)\n", mvol->migr_type,
			FUNC3(mvol->migr_type));
		FUNC6(" dirty              %u\n", mvol->dirty);
		FUNC6(" fs_state           %u\n", mvol->fs_state);
		FUNC6(" verify_errors      %u\n", mvol->verify_errors);
		FUNC6(" bad_blocks         %u\n", mvol->bad_blocks);

		for (j = 0; j < (mvol->migr_state ? 2 : 1); j++) {
			FUNC6("  *** Map %d ***\n", j);
			mmap = FUNC1(mvol, j);
			FUNC6("  offset            %u\n", mmap->offset);
			FUNC6("  offset_hi         %u\n", mmap->offset_hi);
			FUNC6("  disk_sectors      %u\n", mmap->disk_sectors);
			FUNC6("  disk_sectors_hi   %u\n", mmap->disk_sectors_hi);
			FUNC6("  stripe_count      %u\n", mmap->stripe_count);
			FUNC6("  stripe_count_hi   %u\n", mmap->stripe_count_hi);
			FUNC6("  strip_sectors     %u\n", mmap->strip_sectors);
			FUNC6("  status            %u (%s)\n", mmap->status,
				FUNC4(mmap->status));
			FUNC6("  type              %u (%s)\n", mmap->type,
				FUNC5(mmap->type));
			FUNC6("  total_disks       %u\n", mmap->total_disks);
			FUNC6("  total_domains     %u\n", mmap->total_domains);
			FUNC6("  failed_disk_num   %u\n", mmap->failed_disk_num);
			FUNC6("  ddf               %u\n", mmap->ddf);
			FUNC6("  disk_idx         ");
			for (k = 0; k < mmap->total_disks; k++)
				FUNC6(" 0x%08x", mmap->disk_idx[k]);
			FUNC6("\n");
		}
	}
	FUNC6("=================================================\n");
}