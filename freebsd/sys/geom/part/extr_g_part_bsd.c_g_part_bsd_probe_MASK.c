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
typedef  int /*<<< orphan*/  u_char ;
struct g_provider {int sectorsize; int mediasize; } ;
struct g_part_table {int dummy; } ;
struct g_consumer {struct g_provider* provider; } ;
struct disklabel {int dummy; } ;

/* Variables and functions */
 int BBSIZE ; 
 scalar_t__ DISKMAGIC ; 
 int ENOSPC ; 
 int ENOTBLK ; 
 int ENXIO ; 
 int G_PART_PROBE_PRI_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (struct g_consumer*,int,int,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct g_part_table *table, struct g_consumer *cp)
{
	struct g_provider *pp;
	u_char *buf;
	uint32_t magic1, magic2;
	int error;

	pp = cp->provider;

	/* Sanity-check the provider. */
	if (pp->sectorsize < sizeof(struct disklabel) ||
	    pp->mediasize < BBSIZE)
		return (ENOSPC);
	if (BBSIZE % pp->sectorsize)
		return (ENOTBLK);

	/* Check that there's a disklabel. */
	buf = FUNC1(cp, pp->sectorsize, pp->sectorsize, &error);
	if (buf == NULL)
		return (error);
	magic1 = FUNC2(buf + 0);
	magic2 = FUNC2(buf + 132);
	FUNC0(buf);
	return ((magic1 == DISKMAGIC && magic2 == DISKMAGIC)
	    ? G_PART_PROBE_PRI_HIGH : ENXIO);
}