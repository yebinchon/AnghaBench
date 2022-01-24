#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct g_provider {int mediasize; int sectorsize; } ;
struct g_part_table {scalar_t__ gpt_depth; } ;
struct TYPE_3__ {int ddr_sig; int ddr_blksize; int ddr_blkcount; } ;
struct TYPE_4__ {scalar_t__ ent_sig; int ent_pmblkcnt; int /*<<< orphan*/  ent_type; } ;
struct g_part_apm_table {int tivo_series1; TYPE_1__ ddr; TYPE_2__ self; } ;
struct g_consumer {struct g_provider* provider; } ;

/* Variables and functions */
 scalar_t__ APM_DDR_SIG ; 
 scalar_t__ APM_ENT_SIG ; 
 int /*<<< orphan*/  APM_ENT_TYPE_SELF ; 
 int ENOSPC ; 
 int ENXIO ; 
 int G_PART_PROBE_PRI_NORM ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UINT32_MAX ; 
 int FUNC1 (struct g_consumer*,int,TYPE_2__*,int) ; 
 int FUNC2 (char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (struct g_consumer*,long,int,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct g_part_table *basetable, struct g_consumer *cp)
{
	struct g_provider *pp;
	struct g_part_apm_table *table;
	char *buf;
	int error;

	/* We don't nest, which means that our depth should be 0. */
	if (basetable->gpt_depth != 0)
		return (ENXIO);

	table = (struct g_part_apm_table *)basetable;
	table->tivo_series1 = 0;
	pp = cp->provider;

	/* Sanity-check the provider. */
	if (pp->mediasize < 4 * pp->sectorsize)
		return (ENOSPC);

	/* Check that there's a Driver Descriptor Record (DDR). */
	buf = FUNC5(cp, 0L, pp->sectorsize, &error);
	if (buf == NULL)
		return (error);
	if (FUNC2(buf) == APM_DDR_SIG) {
		/* Normal Apple DDR */
		table->ddr.ddr_sig = FUNC2(buf);
		table->ddr.ddr_blksize = FUNC2(buf + 2);
		table->ddr.ddr_blkcount = FUNC3(buf + 4);
		FUNC4(buf);
		if (table->ddr.ddr_blksize != pp->sectorsize)
			return (ENXIO);
		if (table->ddr.ddr_blkcount > pp->mediasize / pp->sectorsize)
			return (ENXIO);
	} else {
		/*
		 * Check for Tivo drives, which have no DDR and a different
		 * signature.  Those whose first two bytes are 14 92 are
		 * Series 2 drives, and aren't supported.  Those that start
		 * with 92 14 are series 1 drives and are supported.
		 */
		if (FUNC2(buf) != 0x9214) {
			/* If this is 0x1492 it could be a series 2 drive */
			FUNC4(buf);
			return (ENXIO);
		}
		table->ddr.ddr_sig = APM_DDR_SIG;		/* XXX */
		table->ddr.ddr_blksize = pp->sectorsize;	/* XXX */
		table->ddr.ddr_blkcount =
		    FUNC0(pp->mediasize / pp->sectorsize, UINT32_MAX);
		table->tivo_series1 = 1;
		FUNC4(buf);
	}

	/* Check that there's a Partition Map. */
	error = FUNC1(cp, 1, &table->self, table->tivo_series1);
	if (error)
		return (error);
	if (table->self.ent_sig != APM_ENT_SIG)
		return (ENXIO);
	if (FUNC6(table->self.ent_type, APM_ENT_TYPE_SELF))
		return (ENXIO);
	if (table->self.ent_pmblkcnt >= table->ddr.ddr_blkcount)
		return (ENXIO);
	return (G_PART_PROBE_PRI_NORM);
}