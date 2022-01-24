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
struct sii_raid_conf {int product_id; int vendor_id; int version_minor; int version_major; int* timestamp; int strip_sectors; int disk_number; int type; int raid0_disks; int raid0_ident; int raid1_disks; int raid1_ident; int generation; int disk_status; int raid_status; int raid_location; int disk_location; int auto_rebuild; char* name; int checksum; scalar_t__ rebuild_lba; scalar_t__ total_sectors; } ;

/* Variables and functions */
 int g_raid_debug ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(struct sii_raid_conf *meta)
{

	if (g_raid_debug < 1)
		return;

	FUNC0("********* ATA SiI RAID Metadata *********\n");
	FUNC0("total_sectors       %llu\n",
	    (long long unsigned)meta->total_sectors);
	FUNC0("product_id          0x%04x\n", meta->product_id);
	FUNC0("vendor_id           0x%04x\n", meta->vendor_id);
	FUNC0("version_minor       0x%04x\n", meta->version_minor);
	FUNC0("version_major       0x%04x\n", meta->version_major);
	FUNC0("timestamp           0x%02x%02x%02x%02x%02x%02x\n",
	    meta->timestamp[5], meta->timestamp[4], meta->timestamp[3],
	    meta->timestamp[2], meta->timestamp[1], meta->timestamp[0]);
	FUNC0("strip_sectors       %d\n", meta->strip_sectors);
	FUNC0("disk_number         %d\n", meta->disk_number);
	FUNC0("type                0x%02x\n", meta->type);
	FUNC0("raid0_disks         %d\n", meta->raid0_disks);
	FUNC0("raid0_ident         %d\n", meta->raid0_ident);
	FUNC0("raid1_disks         %d\n", meta->raid1_disks);
	FUNC0("raid1_ident         %d\n", meta->raid1_ident);
	FUNC0("rebuild_lba         %llu\n",
	    (long long unsigned)meta->rebuild_lba);
	FUNC0("generation          %d\n", meta->generation);
	FUNC0("disk_status         %d\n", meta->disk_status);
	FUNC0("raid_status         %d\n", meta->raid_status);
	FUNC0("raid_location       %d\n", meta->raid_location);
	FUNC0("disk_location       %d\n", meta->disk_location);
	FUNC0("auto_rebuild        %d\n", meta->auto_rebuild);
	FUNC0("name                <%.16s>\n", meta->name);
	FUNC0("checksum            0x%04x\n", meta->checksum);
	FUNC0("=================================================\n");
}