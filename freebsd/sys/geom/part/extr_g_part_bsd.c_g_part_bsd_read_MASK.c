#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
typedef  void* u_char ;
struct partition {int p_size; int p_offset; void* p_cpg; void* p_frag; void* p_fstype; void* p_fsize; } ;
struct g_provider {int mediasize; int sectorsize; char* name; } ;
struct g_part_table {int gpt_sectors; int gpt_heads; int gpt_last; int gpt_isleaf; int gpt_entries; scalar_t__ gpt_first; int /*<<< orphan*/  gpt_fixgeom; } ;
struct g_part_entry {int gpe_internal; } ;
struct g_part_bsd_table {void** bbarea; int offset; } ;
struct g_part_bsd_entry {struct partition part; } ;
struct g_consumer {struct g_provider* provider; } ;
typedef  int off_t ;
struct TYPE_2__ {int gps_minent; int gps_maxent; } ;

/* Variables and functions */
 int /*<<< orphan*/  BBSIZE ; 
 int EINVAL ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int RAW_PART ; 
 int /*<<< orphan*/  UINT32_MAX ; 
 int /*<<< orphan*/  FUNC1 (void**) ; 
 TYPE_1__ g_part_bsd_scheme ; 
 int /*<<< orphan*/  FUNC2 (int,int,int*,int*) ; 
 struct g_part_entry* FUNC3 (struct g_part_table*,int,int,int) ; 
 void** FUNC4 (struct g_consumer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 void* FUNC5 (void**) ; 
 void* FUNC6 (void**) ; 
 int /*<<< orphan*/  FUNC7 (void**,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

__attribute__((used)) static int
FUNC9(struct g_part_table *basetable, struct g_consumer *cp)
{
	struct g_provider *pp;
	struct g_part_bsd_table *table;
	struct g_part_entry *baseentry;
	struct g_part_bsd_entry *entry;
	struct partition part;
	u_char *buf, *p;
	off_t chs, msize;
	u_int sectors, heads;
	int error, index;

	pp = cp->provider;
	table = (struct g_part_bsd_table *)basetable;
	msize = FUNC0(pp->mediasize / pp->sectorsize, UINT32_MAX);

	table->bbarea = FUNC4(cp, 0, BBSIZE, &error);
	if (table->bbarea == NULL)
		return (error);

	buf = table->bbarea + pp->sectorsize;

	if (FUNC6(buf + 40) != pp->sectorsize)
		goto invalid_label;
	sectors = FUNC6(buf + 44);
	if (sectors < 1 || sectors > 255)
		goto invalid_label;
	if (sectors != basetable->gpt_sectors && !basetable->gpt_fixgeom) {
		FUNC2(msize, sectors, &chs, &heads);
		if (chs != 0) {
			basetable->gpt_sectors = sectors;
			basetable->gpt_heads = heads;
		}
	}
	heads = FUNC6(buf + 48);
	if (heads < 1 || heads > 255)
		goto invalid_label;
	if (heads != basetable->gpt_heads && !basetable->gpt_fixgeom)
		basetable->gpt_heads = heads;

	chs = FUNC6(buf + 60);
	if (chs < 1)
		goto invalid_label;
	/* Fix-up a sysinstall bug. */
	if (chs > msize) {
		chs = msize;
		FUNC7(buf + 60, msize);
	}

	basetable->gpt_first = 0;
	basetable->gpt_last = msize - 1;
	basetable->gpt_isleaf = 1;

	basetable->gpt_entries = FUNC5(buf + 138);
	if (basetable->gpt_entries < g_part_bsd_scheme.gps_minent ||
	    basetable->gpt_entries > g_part_bsd_scheme.gps_maxent)
		goto invalid_label;

	table->offset = FUNC6(buf + 148 + RAW_PART * 16 + 4);
	for (index = basetable->gpt_entries - 1; index >= 0; index--) {
		p = buf + 148 + index * 16;
		part.p_size = FUNC6(p + 0);
		part.p_offset = FUNC6(p + 4);
		part.p_fsize = FUNC6(p + 8);
		part.p_fstype = p[12];
		part.p_frag = p[13];
		part.p_cpg = FUNC5(p + 14);
		if (part.p_size == 0)
			continue;
		if (part.p_offset < table->offset)
			continue;
		if (part.p_offset - table->offset > basetable->gpt_last)
			goto invalid_label;
		baseentry = FUNC3(basetable, index + 1,
		    part.p_offset - table->offset,
		    part.p_offset - table->offset + part.p_size - 1);
		entry = (struct g_part_bsd_entry *)baseentry;
		entry->part = part;
		if (index == RAW_PART)
			baseentry->gpe_internal = 1;
	}

	return (0);

 invalid_label:
	FUNC8("GEOM: %s: invalid disklabel.\n", pp->name);
	FUNC1(table->bbarea);
	table->bbarea = NULL;
	return (EINVAL);
}