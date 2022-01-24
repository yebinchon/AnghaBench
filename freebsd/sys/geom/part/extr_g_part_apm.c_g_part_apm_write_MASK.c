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
typedef  size_t uint32_t ;
struct g_provider {size_t sectorsize; } ;
struct g_part_table {int /*<<< orphan*/  gpt_entry; scalar_t__ gpt_created; } ;
struct g_part_entry {size_t gpe_index; int /*<<< orphan*/  gpe_deleted; } ;
struct TYPE_5__ {size_t ent_pmblkcnt; size_t ent_start; size_t ent_size; int /*<<< orphan*/  ent_type; int /*<<< orphan*/  ent_name; } ;
struct TYPE_4__ {size_t ddr_blkcount; int /*<<< orphan*/  ddr_blksize; int /*<<< orphan*/  ddr_sig; } ;
struct g_part_apm_table {TYPE_2__ self; TYPE_1__ ddr; scalar_t__ tivo_series1; } ;
struct TYPE_6__ {size_t ent_start; size_t ent_size; int /*<<< orphan*/  ent_type; int /*<<< orphan*/  ent_name; } ;
struct g_part_apm_entry {TYPE_3__ ent; } ;
struct g_consumer {struct g_provider* provider; } ;

/* Variables and functions */
 int /*<<< orphan*/  APM_ENT_SIG ; 
 int /*<<< orphan*/  APM_ENT_TYPE_UNUSED ; 
 int EOPNOTSUPP ; 
 struct g_part_entry* FUNC0 (int /*<<< orphan*/ *) ; 
 struct g_part_entry* FUNC1 (struct g_part_entry*,int /*<<< orphan*/ ) ; 
 size_t MAXPHYS ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (size_t,int) ; 
 int FUNC7 (struct g_consumer*,int,char*,size_t) ; 
 int /*<<< orphan*/  gpe_entry ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct g_part_table *basetable, struct g_consumer *cp)
{
	struct g_provider *pp;
	struct g_part_entry *baseentry;
	struct g_part_apm_entry *entry;
	struct g_part_apm_table *table;
	char *buf, *ptr;
	uint32_t index;
	int error;
	size_t tblsz;

	pp = cp->provider;
	table = (struct g_part_apm_table *)basetable;
	/*
	 * Tivo Series 1 disk partitions are currently read-only.
	 */
	if (table->tivo_series1)
		return (EOPNOTSUPP);

	/* Write the DDR only when we're newly created. */
	if (basetable->gpt_created) {
		buf = FUNC6(pp->sectorsize, M_WAITOK | M_ZERO);
		FUNC3(buf, table->ddr.ddr_sig);
		FUNC3(buf + 2, table->ddr.ddr_blksize);
		FUNC4(buf + 4, table->ddr.ddr_blkcount);
		error = FUNC7(cp, 0, buf, pp->sectorsize);
		FUNC5(buf);
		if (error)
			return (error);
	}

	/* Allocate the buffer for all entries */
	tblsz = table->self.ent_pmblkcnt;
	buf = FUNC6(tblsz * pp->sectorsize, M_WAITOK | M_ZERO);

	/* Fill the self entry */
	FUNC3(buf, APM_ENT_SIG);
	FUNC4(buf + 4, table->self.ent_pmblkcnt);
	FUNC4(buf + 8, table->self.ent_start);
	FUNC4(buf + 12, table->self.ent_size);
	FUNC2(table->self.ent_name, buf + 16, sizeof(table->self.ent_name));
	FUNC2(table->self.ent_type, buf + 48, sizeof(table->self.ent_type));

	baseentry = FUNC0(&basetable->gpt_entry);
	for (index = 1; index < tblsz; index++) {
		entry = (baseentry != NULL && index == baseentry->gpe_index)
		    ? (struct g_part_apm_entry *)baseentry : NULL;
		ptr = buf + index * pp->sectorsize;
		FUNC3(ptr, APM_ENT_SIG);
		FUNC4(ptr + 4, table->self.ent_pmblkcnt);
		if (entry != NULL && !baseentry->gpe_deleted) {
			FUNC4(ptr + 8, entry->ent.ent_start);
			FUNC4(ptr + 12, entry->ent.ent_size);
			FUNC2(entry->ent.ent_name, ptr + 16,
			    sizeof(entry->ent.ent_name));
			FUNC2(entry->ent.ent_type, ptr + 48,
			    sizeof(entry->ent.ent_type));
		} else {
			FUNC8(ptr + 48, APM_ENT_TYPE_UNUSED);
		}
		if (entry != NULL)
			baseentry = FUNC1(baseentry, gpe_entry);
	}

	for (index = 0; index < tblsz; index += MAXPHYS / pp->sectorsize) {
		error = FUNC7(cp, (1 + index) * pp->sectorsize,
		    buf + index * pp->sectorsize,
		    (tblsz - index > MAXPHYS / pp->sectorsize) ? MAXPHYS:
		    (tblsz - index) * pp->sectorsize);
		if (error) {
			FUNC5(buf);
			return (error);
		}
	}
	FUNC5(buf);
	return (0);
}