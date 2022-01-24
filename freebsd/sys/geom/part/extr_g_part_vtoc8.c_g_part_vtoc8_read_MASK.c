#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  scalar_t__ uint16_t ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct g_provider {int sectorsize; int mediasize; char* name; } ;
struct TYPE_8__ {TYPE_3__* part; TYPE_1__* map; int /*<<< orphan*/  nparts; int /*<<< orphan*/  sanity; TYPE_3__* volume; int /*<<< orphan*/  version; int /*<<< orphan*/  ncyls; int /*<<< orphan*/  nheads; int /*<<< orphan*/  nsecs; } ;
struct g_part_vtoc8_table {int secpercyl; TYPE_4__ vtoc; } ;
struct g_part_table {int gpt_sectors; int gpt_heads; int gpt_last; int gpt_isleaf; int gpt_entries; scalar_t__ gpt_first; int /*<<< orphan*/  gpt_fixgeom; } ;
struct g_part_entry {int gpe_internal; } ;
struct g_consumer {struct g_provider* provider; } ;
typedef  int off_t ;
struct TYPE_7__ {int /*<<< orphan*/  tag; } ;
struct TYPE_6__ {int gps_minent; int gps_maxent; } ;
struct TYPE_5__ {int /*<<< orphan*/  nblks; int /*<<< orphan*/  cyl; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UINT32_MAX ; 
 scalar_t__ VTOC8_NPARTS ; 
 int VTOC_RAW_PART ; 
 int VTOC_SANITY ; 
 scalar_t__ VTOC_TAG_BACKUP ; 
 scalar_t__ VTOC_TAG_UNASSIGNED ; 
 int VTOC_VERSION ; 
 int VTOC_VOLUME_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__**,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int*,int*) ; 
 struct g_part_entry* FUNC9 (struct g_part_table*,int,int,int) ; 
 TYPE_2__ g_part_vtoc8_scheme ; 
 int /*<<< orphan*/ * FUNC10 (struct g_consumer*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,...) ; 

__attribute__((used)) static int
FUNC12(struct g_part_table *basetable, struct g_consumer *cp)
{
	struct g_provider *pp;
	struct g_part_vtoc8_table *table;
	struct g_part_entry *entry;
	u_char *buf;
	off_t chs, msize;
	uint64_t offset, size;
	u_int cyls, heads, sectors;
	int error, index, withtags;
	uint16_t tag;

	pp = cp->provider;
	buf = FUNC10(cp, 0, pp->sectorsize, &error);
	if (buf == NULL)
		return (error);

	table = (struct g_part_vtoc8_table *)basetable;
	FUNC1(buf, &table->vtoc, sizeof(table->vtoc));
	FUNC7(buf);

	msize = FUNC0(pp->mediasize / pp->sectorsize, UINT32_MAX);
	sectors = FUNC2(&table->vtoc.nsecs);
	if (sectors < 1)
		goto invalid_label;
	if (sectors != basetable->gpt_sectors && !basetable->gpt_fixgeom) {
		FUNC8(msize, sectors, &chs, &heads);
		if (chs != 0) {
			basetable->gpt_sectors = sectors;
			basetable->gpt_heads = heads;
		}
	}

	heads = FUNC2(&table->vtoc.nheads);
	if (heads < 1)
		goto invalid_label;
	if (heads != basetable->gpt_heads && !basetable->gpt_fixgeom)
		basetable->gpt_heads = heads;
	/*
	 * Except for ATA disks > 32GB, Solaris uses the native geometry
	 * as reported by the target for the labels while da(4) typically
	 * uses a synthetic one so we don't complain too loudly if these
	 * geometries don't match.
	 */
	if (bootverbose && (sectors != basetable->gpt_sectors ||
	    heads != basetable->gpt_heads))
		FUNC11("GEOM: %s: geometry does not match VTOC8 label "
		    "(label: %uh,%us GEOM: %uh,%us).\n", pp->name, heads,
		    sectors, basetable->gpt_heads, basetable->gpt_sectors);

	table->secpercyl = heads * sectors;
	cyls = FUNC2(&table->vtoc.ncyls);
	chs = cyls * table->secpercyl;
	if (chs < 1 || chs > msize)
		goto invalid_label;

	basetable->gpt_first = 0;
	basetable->gpt_last = chs - 1;
	basetable->gpt_isleaf = 1;

	withtags = (FUNC4(&table->vtoc.sanity) == VTOC_SANITY) ? 1 : 0;
	if (!withtags) {
		FUNC11("GEOM: %s: adding VTOC8 information.\n", pp->name);
		FUNC5(&table->vtoc.version, VTOC_VERSION);
		FUNC6(&table->vtoc.volume, VTOC_VOLUME_LEN);
		FUNC3(&table->vtoc.nparts, VTOC8_NPARTS);
		FUNC6(&table->vtoc.part, sizeof(table->vtoc.part));
		FUNC5(&table->vtoc.sanity, VTOC_SANITY);
	}

	basetable->gpt_entries = FUNC2(&table->vtoc.nparts);
	if (basetable->gpt_entries < g_part_vtoc8_scheme.gps_minent ||
	    basetable->gpt_entries > g_part_vtoc8_scheme.gps_maxent)
		goto invalid_label;

	for (index = basetable->gpt_entries - 1; index >= 0; index--) {
		offset = FUNC4(&table->vtoc.map[index].cyl) *
		    table->secpercyl;
		size = FUNC4(&table->vtoc.map[index].nblks);
		if (size == 0)
			continue;
		if (withtags)
			tag = FUNC2(&table->vtoc.part[index].tag);
		else
			tag = (index == VTOC_RAW_PART)
			    ? VTOC_TAG_BACKUP
			    : VTOC_TAG_UNASSIGNED;

		if (index == VTOC_RAW_PART && tag != VTOC_TAG_BACKUP)
			continue;
		if (index != VTOC_RAW_PART && tag == VTOC_TAG_BACKUP)
			continue;
		entry = FUNC9(basetable, index + 1, offset,
		    offset + size - 1);
		if (tag == VTOC_TAG_BACKUP)
			entry->gpe_internal = 1;

		if (!withtags)
			FUNC3(&table->vtoc.part[index].tag, tag);
	}

	return (0);

 invalid_label:
	FUNC11("GEOM: %s: invalid VTOC8 label.\n", pp->name);
	return (EINVAL);
}