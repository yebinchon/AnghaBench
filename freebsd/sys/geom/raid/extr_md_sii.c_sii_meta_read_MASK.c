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
typedef  scalar_t__ uint16_t ;
struct sii_raid_conf {int vendor_id; int version_major; int type; int /*<<< orphan*/  version_minor; } ;
struct g_provider {int /*<<< orphan*/  name; scalar_t__ sectorsize; scalar_t__ mediasize; } ;
struct g_consumer {struct g_provider* provider; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  M_MD_SII ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int SII_T_CONCAT ; 
 int SII_T_JBOD ; 
 int SII_T_RAID0 ; 
 int SII_T_RAID01 ; 
 int SII_T_RAID1 ; 
 int SII_T_RAID5 ; 
 int SII_T_SPARE ; 
 int /*<<< orphan*/  FUNC1 (struct sii_raid_conf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (struct g_consumer*,scalar_t__,scalar_t__,int*) ; 
 struct sii_raid_conf* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sii_raid_conf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static struct sii_raid_conf *
FUNC7(struct g_consumer *cp)
{
	struct g_provider *pp;
	struct sii_raid_conf *meta;
	char *buf;
	int error, i;
	uint16_t checksum, *ptr;

	pp = cp->provider;

	/* Read the anchor sector. */
	buf = FUNC3(cp,
	    pp->mediasize - pp->sectorsize, pp->sectorsize, &error);
	if (buf == NULL) {
		FUNC0(1, "Cannot read metadata from %s (error=%d).",
		    pp->name, error);
		return (NULL);
	}
	meta = (struct sii_raid_conf *)buf;

	/* Check vendor ID. */
	if (meta->vendor_id != 0x1095) {
		FUNC0(1, "SiI vendor ID check failed on %s (0x%04x)",
		    pp->name, meta->vendor_id);
		FUNC2(buf);
		return (NULL);
	}

	/* Check metadata major version. */
	if (meta->version_major != 2) {
		FUNC0(1, "SiI version check failed on %s (%d.%d)",
		    pp->name, meta->version_major, meta->version_minor);
		FUNC2(buf);
		return (NULL);
	}
	meta = FUNC4(sizeof(*meta), M_MD_SII, M_WAITOK);
	FUNC5(meta, buf, FUNC6(sizeof(*meta), pp->sectorsize));
	FUNC2(buf);

	/* Check metadata checksum. */
	for (checksum = 0, ptr = (uint16_t *)meta, i = 0; i <= 159; i++)
		checksum += *ptr++;
	if (checksum != 0) {
		FUNC0(1, "SiI checksum check failed on %s", pp->name);
		FUNC1(meta, M_MD_SII);
		return (NULL);
	}

	/* Check raid type. */
	if (meta->type != SII_T_RAID0 && meta->type != SII_T_RAID1 &&
	    meta->type != SII_T_RAID01 && meta->type != SII_T_SPARE &&
	    meta->type != SII_T_RAID5 && meta->type != SII_T_CONCAT &&
	    meta->type != SII_T_JBOD) {
		FUNC0(1, "SiI unknown RAID level on %s (0x%02x)",
		    pp->name, meta->type);
		FUNC1(meta, M_MD_SII);
		return (NULL);
	}

	return (meta);
}