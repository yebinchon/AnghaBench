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
struct jmicron_raid_conf {scalar_t__ checksum; } ;
struct g_provider {int /*<<< orphan*/  name; scalar_t__ sectorsize; scalar_t__ mediasize; } ;
struct g_consumer {struct g_provider* provider; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  M_MD_JMICRON ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct g_consumer*,scalar_t__,char*,scalar_t__) ; 
 char* FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct jmicron_raid_conf*,int) ; 

__attribute__((used)) static int
FUNC5(struct g_consumer *cp, struct jmicron_raid_conf *meta)
{
	struct g_provider *pp;
	char *buf;
	int error, i;
	uint16_t checksum, *ptr;

	pp = cp->provider;

	/* Recalculate checksum for case if metadata were changed. */
	meta->checksum = 0;
	for (checksum = 0, ptr = (uint16_t *)meta, i = 0; i < 64; i++)
		checksum += *ptr++;
	meta->checksum -= checksum;

	/* Create and fill buffer. */
	buf = FUNC3(pp->sectorsize, M_MD_JMICRON, M_WAITOK | M_ZERO);
	FUNC4(buf, meta, sizeof(*meta));

	error = FUNC2(cp,
	    pp->mediasize - pp->sectorsize, buf, pp->sectorsize);
	if (error != 0) {
		FUNC0(1, "Cannot write metadata to %s (error=%d).",
		    pp->name, error);
	}

	FUNC1(buf, M_MD_JMICRON);
	return (error);
}