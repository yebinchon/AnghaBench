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
struct nvidia_raid_conf {char* nvidia_id; int config_size; int checksum; int version; int disk_number; int dummy_0; int total_sectors; int sector_size; char* name; int* revision; int disk_status; int magic_0; int state; int array_width; int total_disks; int orig_array_width; int type; int dummy_3; int strip_sectors; int strip_bytes; int strip_shift; int strip_mask; int stripe_sectors; int stripe_bytes; int rebuild_lba; int orig_type; int orig_total_sectors; int status; int /*<<< orphan*/ * volume_id; } ;

/* Variables and functions */
 int g_raid_debug ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(struct nvidia_raid_conf *meta)
{

	if (g_raid_debug < 1)
		return;

	FUNC0("********* ATA NVIDIA RAID Metadata *********\n");
	FUNC0("nvidia_id           <%.8s>\n", meta->nvidia_id);
	FUNC0("config_size         %u\n", meta->config_size);
	FUNC0("checksum            0x%08x\n", meta->checksum);
	FUNC0("version             0x%04x\n", meta->version);
	FUNC0("disk_number         %d\n", meta->disk_number);
	FUNC0("dummy_0             0x%02x\n", meta->dummy_0);
	FUNC0("total_sectors       %u\n", meta->total_sectors);
	FUNC0("sector_size         %u\n", meta->sector_size);
	FUNC0("name                <%.16s>\n", meta->name);
	FUNC0("revision            0x%02x%02x%02x%02x\n",
	    meta->revision[0], meta->revision[1],
	    meta->revision[2], meta->revision[3]);
	FUNC0("disk_status         0x%08x\n", meta->disk_status);
	FUNC0("magic_0             0x%08x\n", meta->magic_0);
	FUNC0("volume_id           0x%016jx%016jx\n",
	    meta->volume_id[1], meta->volume_id[0]);
	FUNC0("state               0x%02x\n", meta->state);
	FUNC0("array_width         %u\n", meta->array_width);
	FUNC0("total_disks         %u\n", meta->total_disks);
	FUNC0("orig_array_width    %u\n", meta->orig_array_width);
	FUNC0("type                0x%04x\n", meta->type);
	FUNC0("dummy_3             0x%04x\n", meta->dummy_3);
	FUNC0("strip_sectors       %u\n", meta->strip_sectors);
	FUNC0("strip_bytes         %u\n", meta->strip_bytes);
	FUNC0("strip_shift         %u\n", meta->strip_shift);
	FUNC0("strip_mask          0x%08x\n", meta->strip_mask);
	FUNC0("stripe_sectors      %u\n", meta->stripe_sectors);
	FUNC0("stripe_bytes        %u\n", meta->stripe_bytes);
	FUNC0("rebuild_lba         %u\n", meta->rebuild_lba);
	FUNC0("orig_type           0x%04x\n", meta->orig_type);
	FUNC0("orig_total_sectors  %u\n", meta->orig_total_sectors);
	FUNC0("status              0x%08x\n", meta->status);
	FUNC0("=================================================\n");
}