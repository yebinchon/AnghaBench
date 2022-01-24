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
struct jmicron_raid_conf {int* signature; int version; int checksum; int disk_id; int offset; int disk_sectors_high; int disk_sectors_low; char* name; int type; int stripe_shift; int flags; int* spare; int* disks; } ;

/* Variables and functions */
 int JMICRON_MAX_DISKS ; 
 int JMICRON_MAX_SPARE ; 
 int g_raid_debug ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(struct jmicron_raid_conf *meta)
{
	int k;

	if (g_raid_debug < 1)
		return;

	FUNC0("********* ATA JMicron RAID Metadata *********\n");
	FUNC0("signature           <%c%c>\n", meta->signature[0], meta->signature[1]);
	FUNC0("version             %04x\n", meta->version);
	FUNC0("checksum            0x%04x\n", meta->checksum);
	FUNC0("disk_id             0x%08x\n", meta->disk_id);
	FUNC0("offset              0x%08x\n", meta->offset);
	FUNC0("disk_sectors_high   0x%08x\n", meta->disk_sectors_high);
	FUNC0("disk_sectors_low    0x%04x\n", meta->disk_sectors_low);
	FUNC0("name                <%.16s>\n", meta->name);
	FUNC0("type                %d\n", meta->type);
	FUNC0("stripe_shift        %d\n", meta->stripe_shift);
	FUNC0("flags               %04x\n", meta->flags);
	FUNC0("spare              ");
	for (k = 0; k < JMICRON_MAX_SPARE; k++)
		FUNC0(" 0x%08x", meta->spare[k]);
	FUNC0("\n");
	FUNC0("disks              ");
	for (k = 0; k < JMICRON_MAX_DISKS; k++)
		FUNC0(" 0x%08x", meta->disks[k]);
	FUNC0("\n");
	FUNC0("=================================================\n");
}