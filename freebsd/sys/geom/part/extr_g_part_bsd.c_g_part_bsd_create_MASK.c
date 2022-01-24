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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u_char ;
struct g_provider {int sectorsize; int mediasize; } ;
struct g_part_table {int gpt_sectors; int gpt_heads; int gpt_entries; int gpt_last; int gpt_isleaf; scalar_t__ gpt_first; } ;
struct g_part_parms {struct g_provider* gpp_provider; } ;
struct g_part_entry {int gpe_internal; } ;
struct g_part_bsd_table {int /*<<< orphan*/  offset; int /*<<< orphan*/ * bbarea; } ;
struct TYPE_2__ {int p_size; int /*<<< orphan*/  p_offset; } ;
struct g_part_bsd_entry {TYPE_1__ part; } ;
struct disklabel {int dummy; } ;

/* Variables and functions */
 int BBSIZE ; 
 int DISKMAGIC ; 
 int ENOSPC ; 
 int ENOTBLK ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ RAW_PART ; 
 int /*<<< orphan*/  UINT32_MAX ; 
 int /*<<< orphan*/ * FUNC1 (int,int) ; 
 struct g_part_entry* FUNC2 (struct g_part_table*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC5(struct g_part_table *basetable, struct g_part_parms *gpp)
{
	struct g_provider *pp;
	struct g_part_entry *baseentry;
	struct g_part_bsd_entry *entry;
	struct g_part_bsd_table *table;
	u_char *ptr;
	uint32_t msize, ncyls, secpercyl;

	pp = gpp->gpp_provider;

	if (pp->sectorsize < sizeof(struct disklabel))
		return (ENOSPC);
	if (BBSIZE % pp->sectorsize)
		return (ENOTBLK);

	msize = FUNC0(pp->mediasize / pp->sectorsize, UINT32_MAX);
	secpercyl = basetable->gpt_sectors * basetable->gpt_heads;
	ncyls = msize / secpercyl;

	table = (struct g_part_bsd_table *)basetable;
	table->bbarea = FUNC1(BBSIZE, M_WAITOK | M_ZERO);
	ptr = table->bbarea + pp->sectorsize;

	FUNC4(ptr + 0, DISKMAGIC);			/* d_magic */
	FUNC4(ptr + 40, pp->sectorsize);		/* d_secsize */
	FUNC4(ptr + 44, basetable->gpt_sectors);	/* d_nsectors */
	FUNC4(ptr + 48, basetable->gpt_heads);	/* d_ntracks */
	FUNC4(ptr + 52, ncyls);			/* d_ncylinders */
	FUNC4(ptr + 56, secpercyl);			/* d_secpercyl */
	FUNC4(ptr + 60, msize);			/* d_secperunit */
	FUNC3(ptr + 72, 3600);			/* d_rpm */
	FUNC4(ptr + 132, DISKMAGIC);			/* d_magic2 */
	FUNC3(ptr + 138, basetable->gpt_entries);	/* d_npartitions */
	FUNC4(ptr + 140, BBSIZE);			/* d_bbsize */

	basetable->gpt_first = 0;
	basetable->gpt_last = msize - 1;
	basetable->gpt_isleaf = 1;

	baseentry = FUNC2(basetable, RAW_PART + 1,
	    basetable->gpt_first, basetable->gpt_last);
	baseentry->gpe_internal = 1;
	entry = (struct g_part_bsd_entry *)baseentry;
	entry->part.p_size = basetable->gpt_last + 1;
	entry->part.p_offset = table->offset;

	return (0);
}