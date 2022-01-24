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
struct nvidia_raid_conf {int config_size; int state; int type; int /*<<< orphan*/  nvidia_id; } ;
struct g_provider {int sectorsize; int /*<<< orphan*/  name; scalar_t__ mediasize; } ;
struct g_consumer {struct g_provider* provider; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,...) ; 
 int /*<<< orphan*/  M_MD_NVIDIA ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  NVIDIA_MAGIC ; 
 int NVIDIA_S_IDLE ; 
 int NVIDIA_S_INIT ; 
 int NVIDIA_S_REBUILD ; 
 int NVIDIA_S_SYNC ; 
 int NVIDIA_T_CONCAT ; 
 int NVIDIA_T_RAID0 ; 
 int NVIDIA_T_RAID01 ; 
 int NVIDIA_T_RAID1 ; 
 int NVIDIA_T_RAID3 ; 
 int NVIDIA_T_RAID5 ; 
 int NVIDIA_T_RAID5_SYM ; 
 int /*<<< orphan*/  FUNC1 (struct nvidia_raid_conf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (struct g_consumer*,scalar_t__,int,int*) ; 
 struct nvidia_raid_conf* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nvidia_raid_conf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct nvidia_raid_conf *
FUNC9(struct g_consumer *cp)
{
	struct g_provider *pp;
	struct nvidia_raid_conf *meta;
	char *buf;
	int error, i;
	uint32_t checksum, *ptr;

	pp = cp->provider;

	/* Read the anchor sector. */
	buf = FUNC3(cp,
	    pp->mediasize - 2 * pp->sectorsize, pp->sectorsize, &error);
	if (buf == NULL) {
		FUNC0(1, "Cannot read metadata from %s (error=%d).",
		    pp->name, error);
		return (NULL);
	}
	meta = (struct nvidia_raid_conf *)buf;

	/* Check if this is an NVIDIA RAID struct */
	if (FUNC8(meta->nvidia_id, NVIDIA_MAGIC, FUNC7(NVIDIA_MAGIC))) {
		FUNC0(1, "NVIDIA signature check failed on %s", pp->name);
		FUNC2(buf);
		return (NULL);
	}
	if (meta->config_size > 128 ||
	    meta->config_size < 30) {
		FUNC0(1, "NVIDIA metadata size looks wrong: %d",
		    meta->config_size);
		FUNC2(buf);
		return (NULL);
	}
	meta = FUNC4(sizeof(*meta), M_MD_NVIDIA, M_WAITOK);
	FUNC5(meta, buf, FUNC6(sizeof(*meta), pp->sectorsize));
	FUNC2(buf);

	/* Check metadata checksum. */
	for (checksum = 0, ptr = (uint32_t *)meta,
	    i = 0; i < meta->config_size; i++)
		checksum += *ptr++;
	if (checksum != 0) {
		FUNC0(1, "NVIDIA checksum check failed on %s", pp->name);
		FUNC1(meta, M_MD_NVIDIA);
		return (NULL);
	}

	/* Check volume state. */
	if (meta->state != NVIDIA_S_IDLE && meta->state != NVIDIA_S_INIT &&
	    meta->state != NVIDIA_S_REBUILD && meta->state != NVIDIA_S_SYNC) {
		FUNC0(1, "NVIDIA unknown state on %s (0x%02x)",
		    pp->name, meta->state);
		FUNC1(meta, M_MD_NVIDIA);
		return (NULL);
	}

	/* Check raid type. */
	if (meta->type != NVIDIA_T_RAID0 && meta->type != NVIDIA_T_RAID1 &&
	    meta->type != NVIDIA_T_RAID3 && meta->type != NVIDIA_T_RAID5 &&
	    meta->type != NVIDIA_T_RAID5_SYM &&
	    meta->type != NVIDIA_T_RAID01 && meta->type != NVIDIA_T_CONCAT) {
		FUNC0(1, "NVIDIA unknown RAID level on %s (0x%02x)",
		    pp->name, meta->type);
		FUNC1(meta, M_MD_NVIDIA);
		return (NULL);
	}

	return (meta);
}