#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int uint32_t ;
struct vtoc8 {int dummy; } ;
struct g_provider {int sectorsize; int mediasize; } ;
struct TYPE_6__ {TYPE_2__* map; TYPE_1__* part; int /*<<< orphan*/  magic; int /*<<< orphan*/  nsecs; int /*<<< orphan*/  nheads; int /*<<< orphan*/  altcyls; int /*<<< orphan*/  ncyls; int /*<<< orphan*/  physcyls; int /*<<< orphan*/  rpm; int /*<<< orphan*/  sanity; int /*<<< orphan*/  nparts; int /*<<< orphan*/  version; int /*<<< orphan*/  ascii; } ;
struct g_part_vtoc8_table {int secpercyl; TYPE_3__ vtoc; } ;
struct g_part_table {int gpt_sectors; int gpt_heads; int gpt_last; int gpt_isleaf; scalar_t__ gpt_first; } ;
struct g_part_parms {struct g_provider* gpp_provider; } ;
struct g_part_entry {int gpe_internal; } ;
struct TYPE_5__ {int /*<<< orphan*/  nblks; } ;
struct TYPE_4__ {int /*<<< orphan*/  tag; } ;

/* Variables and functions */
 int ENOSPC ; 
 int ENXIO ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UINT32_MAX ; 
 int VTOC8_NPARTS ; 
 int VTOC_MAGIC ; 
 int VTOC_RAW_PART ; 
 int VTOC_SANITY ; 
 int VTOC_TAG_BACKUP ; 
 int VTOC_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct g_part_entry* FUNC3 (struct g_part_table*,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,long long,int,int,int,int) ; 

__attribute__((used)) static int
FUNC5(struct g_part_table *basetable, struct g_part_parms *gpp)
{
	struct g_provider *pp;
	struct g_part_entry *entry;
	struct g_part_vtoc8_table *table;
	uint64_t msize;
	uint32_t acyls, ncyls, pcyls;

	pp = gpp->gpp_provider;

	if (pp->sectorsize < sizeof(struct vtoc8))
		return (ENOSPC);
	if (pp->sectorsize > sizeof(struct vtoc8))
		return (ENXIO);

	table = (struct g_part_vtoc8_table *)basetable;

	msize = FUNC0(pp->mediasize / pp->sectorsize, UINT32_MAX);
	table->secpercyl = basetable->gpt_sectors * basetable->gpt_heads;
	pcyls = msize / table->secpercyl;
	acyls = 2;
	ncyls = pcyls - acyls;
	msize = ncyls * table->secpercyl;

	FUNC4(table->vtoc.ascii, "FreeBSD%lldM cyl %u alt %u hd %u sec %u",
	    (long long)(msize / 2048), ncyls, acyls, basetable->gpt_heads,
	    basetable->gpt_sectors);
	FUNC2(&table->vtoc.version, VTOC_VERSION);
	FUNC1(&table->vtoc.nparts, VTOC8_NPARTS);
	FUNC2(&table->vtoc.sanity, VTOC_SANITY);
	FUNC1(&table->vtoc.rpm, 3600);
	FUNC1(&table->vtoc.physcyls, pcyls);
	FUNC1(&table->vtoc.ncyls, ncyls);
	FUNC1(&table->vtoc.altcyls, acyls);
	FUNC1(&table->vtoc.nheads, basetable->gpt_heads);
	FUNC1(&table->vtoc.nsecs, basetable->gpt_sectors);
	FUNC1(&table->vtoc.magic, VTOC_MAGIC);

	basetable->gpt_first = 0;
	basetable->gpt_last = msize - 1;
	basetable->gpt_isleaf = 1;

	entry = FUNC3(basetable, VTOC_RAW_PART + 1,
	    basetable->gpt_first, basetable->gpt_last);
	entry->gpe_internal = 1;
	FUNC1(&table->vtoc.part[VTOC_RAW_PART].tag, VTOC_TAG_BACKUP);
	FUNC2(&table->vtoc.map[VTOC_RAW_PART].nblks, msize);
	return (0);
}