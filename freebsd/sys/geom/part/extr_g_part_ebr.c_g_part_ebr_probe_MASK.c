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
typedef  int u_char ;
struct g_provider {int sectorsize; int mediasize; } ;
struct g_part_table {scalar_t__ gpt_depth; } ;
struct g_consumer {struct g_provider* provider; } ;

/* Variables and functions */
 scalar_t__ DOSMAGIC ; 
 int DOSMAGICOFFSET ; 
 int DOSPARTOFF ; 
 int DOSPARTSIZE ; 
 int EBRSIZE ; 
 int ENOSPC ; 
 int ENXIO ; 
 int G_PART_PROBE_PRI_NORM ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int FUNC1 (char*,struct g_consumer*,char**) ; 
 int* FUNC2 (struct g_consumer*,long,int,int*) ; 
 scalar_t__ FUNC3 (int*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static int
FUNC5(struct g_part_table *table, struct g_consumer *cp)
{
	char type[64];
	struct g_provider *pp;
	u_char *buf, *p;
	int error, index, res;
	uint16_t magic;

	pp = cp->provider;

	/* Sanity-check the provider. */
	if (pp->sectorsize < EBRSIZE || pp->mediasize < pp->sectorsize)
		return (ENOSPC);
	if (pp->sectorsize > 4096)
		return (ENXIO);

	/* Check that we have a parent and that it's a MBR. */
	if (table->gpt_depth == 0)
		return (ENXIO);
	error = FUNC1("PART::scheme", cp, &type);
	if (error != 0)
		return (error);
	if (FUNC4(type, "MBR") != 0)
		return (ENXIO);
	/* Check that partition has type DOSPTYP_EBR. */
	error = FUNC1("PART::type", cp, &type);
	if (error != 0)
		return (error);
	if (FUNC4(type, "ebr") != 0)
		return (ENXIO);

	/* Check that there's a EBR. */
	buf = FUNC2(cp, 0L, pp->sectorsize, &error);
	if (buf == NULL)
		return (error);

	/* We goto out on mismatch. */
	res = ENXIO;

	magic = FUNC3(buf + DOSMAGICOFFSET);
	if (magic != DOSMAGIC)
		goto out;

	for (index = 0; index < 2; index++) {
		p = buf + DOSPARTOFF + index * DOSPARTSIZE;
		if (p[0] != 0 && p[0] != 0x80)
			goto out;
	}
	res = G_PART_PROBE_PRI_NORM;

 out:
	FUNC0(buf);
	return (res);
}