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
struct jmicron_raid_conf {int /*<<< orphan*/  signature; } ;
struct g_provider {int /*<<< orphan*/  name; scalar_t__ sectorsize; scalar_t__ mediasize; } ;
struct g_consumer {struct g_provider* provider; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  JMICRON_MAGIC ; 
 int /*<<< orphan*/  M_MD_JMICRON ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC1 (struct jmicron_raid_conf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (struct g_consumer*,scalar_t__,scalar_t__,int*) ; 
 struct jmicron_raid_conf* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct jmicron_raid_conf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct jmicron_raid_conf *
FUNC9(struct g_consumer *cp)
{
	struct g_provider *pp;
	struct jmicron_raid_conf *meta;
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
	meta = (struct jmicron_raid_conf *)buf;

	/* Check if this is an JMicron RAID struct */
	if (FUNC8(meta->signature, JMICRON_MAGIC, FUNC7(JMICRON_MAGIC))) {
		FUNC0(1, "JMicron signature check failed on %s", pp->name);
		FUNC2(buf);
		return (NULL);
	}
	meta = FUNC4(sizeof(*meta), M_MD_JMICRON, M_WAITOK);
	FUNC5(meta, buf, FUNC6(sizeof(*meta), pp->sectorsize));
	FUNC2(buf);

	/* Check metadata checksum. */
	for (checksum = 0, ptr = (uint16_t *)meta, i = 0; i < 64; i++)
		checksum += *ptr++;
	if (checksum != 0) {
		FUNC0(1, "JMicron checksum check failed on %s", pp->name);
		FUNC1(meta, M_MD_JMICRON);
		return (NULL);
	}

	return (meta);
}