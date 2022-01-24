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
struct TYPE_3__ {int flags; int number; int channel; int device; int /*<<< orphan*/  id; } ;
struct promise_raid_conf {char* promise_id; int disk_offset; int disk_sectors; int disk_rebuild; int generation; int status; int type; int total_disks; int stripe_shift; int array_width; int array_number; int total_sectors; int cylinders; int heads; int sectors; char* name; int magic_3; int magic_4; int magic_5; int total_sectors_high; int sector_size; int backup_time; int disk_offset_high; int disk_sectors_high; int disk_rebuild_high; int /*<<< orphan*/  rebuild_lba64; TYPE_2__* disks; int /*<<< orphan*/  volume_id; TYPE_1__ disk; } ;
struct TYPE_4__ {int flags; int number; int channel; int device; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int PROMISE_MAX_DISKS ; 
 int g_raid_debug ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(struct promise_raid_conf *meta)
{
	int i;

	if (g_raid_debug < 1)
		return;

	FUNC0("********* ATA Promise Metadata *********\n");
	FUNC0("promise_id          <%.24s>\n", meta->promise_id);
	FUNC0("disk                %02x %02x %02x %02x %016jx\n",
	    meta->disk.flags, meta->disk.number, meta->disk.channel,
	    meta->disk.device, meta->disk.id);
	FUNC0("disk_offset         %u\n", meta->disk_offset);
	FUNC0("disk_sectors        %u\n", meta->disk_sectors);
	FUNC0("disk_rebuild        %u\n", meta->disk_rebuild);
	FUNC0("generation          %u\n", meta->generation);
	FUNC0("status              0x%02x\n", meta->status);
	FUNC0("type                %u\n", meta->type);
	FUNC0("total_disks         %u\n", meta->total_disks);
	FUNC0("stripe_shift        %u\n", meta->stripe_shift);
	FUNC0("array_width         %u\n", meta->array_width);
	FUNC0("array_number        %u\n", meta->array_number);
	FUNC0("total_sectors       %u\n", meta->total_sectors);
	FUNC0("cylinders           %u\n", meta->cylinders);
	FUNC0("heads               %u\n", meta->heads);
	FUNC0("sectors             %u\n", meta->sectors);
	FUNC0("volume_id           0x%016jx\n", meta->volume_id);
	FUNC0("disks:\n");
	for (i = 0; i < PROMISE_MAX_DISKS; i++ ) {
		FUNC0("                    %02x %02x %02x %02x %016jx\n",
		    meta->disks[i].flags, meta->disks[i].number,
		    meta->disks[i].channel, meta->disks[i].device,
		    meta->disks[i].id);
	}
	FUNC0("name                <%.32s>\n", meta->name);
	FUNC0("magic_3             0x%08x\n", meta->magic_3);
	FUNC0("rebuild_lba64       %ju\n", meta->rebuild_lba64);
	FUNC0("magic_4             0x%08x\n", meta->magic_4);
	FUNC0("magic_5             0x%08x\n", meta->magic_5);
	FUNC0("total_sectors_high  0x%08x\n", meta->total_sectors_high);
	FUNC0("sector_size         %u\n", meta->sector_size);
	FUNC0("backup_time         %d\n", meta->backup_time);
	FUNC0("disk_offset_high    0x%08x\n", meta->disk_offset_high);
	FUNC0("disk_sectors_high   0x%08x\n", meta->disk_sectors_high);
	FUNC0("disk_rebuild_high   0x%08x\n", meta->disk_rebuild_high);
	FUNC0("=================================================\n");
}