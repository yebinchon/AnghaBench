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
typedef  scalar_t__ uint32_t ;
struct promise_raid_conf {scalar_t__ checksum; int integrity; int total_disks; int disk_offset_high; int disk_sectors_high; int disk_rebuild_high; int disk_rebuild; int total_sectors_high; int rebuild_lba64; int sector_size; scalar_t__ backup_time; int /*<<< orphan*/  promise_id; } ;
struct g_provider {int sectorsize; int /*<<< orphan*/  name; scalar_t__ mediasize; } ;
struct g_consumer {struct g_provider* provider; } ;

/* Variables and functions */
 int /*<<< orphan*/  FREEBSD_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,...) ; 
 int MAXPHYS ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  M_MD_PROMISE ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int PROMISE_I_VALID ; 
 int /*<<< orphan*/  PROMISE_MAGIC ; 
 int PROMISE_MAX_DISKS ; 
 int PROMISE_MAX_SUBDISKS ; 
 int PROMISE_META_OFFSET ; 
 int UINT32_MAX ; 
 int UINT64_MAX ; 
 int /*<<< orphan*/  FUNC2 (struct promise_raid_conf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (struct g_consumer*,scalar_t__,int,int*) ; 
 struct promise_raid_conf* FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct promise_raid_conf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct g_consumer *cp, struct promise_raid_conf **metaarr)
{
	struct g_provider *pp;
	struct promise_raid_conf *meta;
	char *buf;
	int error, i, subdisks;
	uint32_t checksum, *ptr;

	pp = cp->provider;
	subdisks = 0;

	if (pp->sectorsize * 4 > MAXPHYS) {
		FUNC0(1, "%s: Blocksize is too big.", pp->name);
		return (subdisks);
	}
next:
	/* Read metadata block. */
	buf = FUNC4(cp, pp->mediasize - pp->sectorsize *
	    (63 - subdisks * PROMISE_META_OFFSET),
	    pp->sectorsize * 4, &error);
	if (buf == NULL) {
		FUNC0(1, "Cannot read metadata from %s (error=%d).",
		    pp->name, error);
		return (subdisks);
	}
	meta = (struct promise_raid_conf *)buf;

	/* Check if this is an Promise RAID struct */
	if (FUNC8(meta->promise_id, PROMISE_MAGIC, FUNC7(PROMISE_MAGIC)) &&
	    FUNC8(meta->promise_id, FREEBSD_MAGIC, FUNC7(FREEBSD_MAGIC))) {
		if (subdisks == 0)
			FUNC0(1,
			    "Promise signature check failed on %s", pp->name);
		FUNC3(buf);
		return (subdisks);
	}
	meta = FUNC5(sizeof(*meta), M_MD_PROMISE, M_WAITOK);
	FUNC6(meta, buf, FUNC1(sizeof(*meta), pp->sectorsize * 4));
	FUNC3(buf);

	/* Check metadata checksum. */
	for (checksum = 0, ptr = (uint32_t *)meta, i = 0; i < 511; i++)
		checksum += *ptr++;
	if (checksum != meta->checksum) {
		FUNC0(1, "Promise checksum check failed on %s", pp->name);
		FUNC2(meta, M_MD_PROMISE);
		return (subdisks);
	}

	if ((meta->integrity & PROMISE_I_VALID) == 0) {
		FUNC0(1, "Promise metadata is invalid on %s", pp->name);
		FUNC2(meta, M_MD_PROMISE);
		return (subdisks);
	}

	if (meta->total_disks > PROMISE_MAX_DISKS) {
		FUNC0(1, "Wrong number of disks on %s (%d)",
		    pp->name, meta->total_disks);
		FUNC2(meta, M_MD_PROMISE);
		return (subdisks);
	}

	/* Remove filler garbage from fields used in newer metadata. */
	if (meta->disk_offset_high == 0x8b8c8d8e &&
	    meta->disk_sectors_high == 0x8788898a &&
	    meta->disk_rebuild_high == 0x83848586) {
		meta->disk_offset_high = 0;
		meta->disk_sectors_high = 0;
		if (meta->disk_rebuild == UINT32_MAX)
			meta->disk_rebuild_high = UINT32_MAX;
		else
			meta->disk_rebuild_high = 0;
		if (meta->total_sectors_high == 0x15161718) {
			meta->total_sectors_high = 0;
			meta->backup_time = 0;
			if (meta->rebuild_lba64 == 0x2122232425262728)
				meta->rebuild_lba64 = UINT64_MAX;
		}
	}
	if (meta->sector_size < 1 || meta->sector_size > 8)
		meta->sector_size = 1;

	/* Save this part and look for next. */
	*metaarr = meta;
	metaarr++;
	subdisks++;
	if (subdisks < PROMISE_MAX_SUBDISKS)
		goto next;

	return (subdisks);
}