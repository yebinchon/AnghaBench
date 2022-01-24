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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_char ;
struct g_provider {int sectorsize; } ;
struct g_part_table {int /*<<< orphan*/  gpt_entry; } ;
struct g_part_entry {int gpe_start; scalar_t__ gpe_end; scalar_t__ gpe_deleted; } ;
struct g_part_ebr_table {int /*<<< orphan*/  ebr; } ;
struct TYPE_2__ {int /*<<< orphan*/  dp_size; int /*<<< orphan*/  dp_start; int /*<<< orphan*/  dp_ecyl; int /*<<< orphan*/  dp_esect; int /*<<< orphan*/  dp_ehd; int /*<<< orphan*/  dp_typ; int /*<<< orphan*/  dp_scyl; int /*<<< orphan*/  dp_ssect; int /*<<< orphan*/  dp_shd; int /*<<< orphan*/  dp_flag; } ;
struct g_part_ebr_entry {TYPE_1__ ent; } ;
struct g_consumer {struct g_provider* provider; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOSMAGIC ; 
 int DOSMAGICOFFSET ; 
 int DOSPARTOFF ; 
 int DOSPARTSIZE ; 
 struct g_part_entry* FUNC0 (int /*<<< orphan*/ *) ; 
 struct g_part_entry* FUNC1 (struct g_part_entry*,int /*<<< orphan*/ ) ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct g_part_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int,int) ; 
 int FUNC7 (struct g_consumer*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  gpe_entry ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct g_part_table *basetable, struct g_consumer *cp)
{
#ifndef GEOM_PART_EBR_COMPAT
	struct g_part_ebr_table *table;
#endif
	struct g_provider *pp;
	struct g_part_entry *baseentry, *next;
	struct g_part_ebr_entry *entry;
	u_char *buf;
	u_char *p;
	int error;

	pp = cp->provider;
	buf = FUNC6(pp->sectorsize, M_WAITOK | M_ZERO);
#ifndef GEOM_PART_EBR_COMPAT
	table = (struct g_part_ebr_table *)basetable;
	FUNC2(table->ebr, buf, DOSPARTOFF);
#endif
	FUNC8(buf + DOSMAGICOFFSET, DOSMAGIC);

	baseentry = FUNC0(&basetable->gpt_entry);
	while (baseentry != NULL && baseentry->gpe_deleted)
		baseentry = FUNC1(baseentry, gpe_entry);

	/* Wipe-out the first EBR when there are no slices. */
	if (baseentry == NULL) {
		error = FUNC7(cp, 0, buf, pp->sectorsize);
		goto out;
	}

	/*
	 * If the first partition is not in LBA 0, we need to
	 * put a "link" EBR in LBA 0.
	 */
	if (baseentry->gpe_start != 0) {
		FUNC4(basetable, (uint32_t)baseentry->gpe_start,
		    (uint32_t)baseentry->gpe_end, buf + DOSPARTOFF);
		error = FUNC7(cp, 0, buf, pp->sectorsize);
		if (error)
			goto out;
	}

	do {
		entry = (struct g_part_ebr_entry *)baseentry;

		p = buf + DOSPARTOFF;
		p[0] = entry->ent.dp_flag;
		p[1] = entry->ent.dp_shd;
		p[2] = entry->ent.dp_ssect;
		p[3] = entry->ent.dp_scyl;
		p[4] = entry->ent.dp_typ;
		p[5] = entry->ent.dp_ehd;
		p[6] = entry->ent.dp_esect;
		p[7] = entry->ent.dp_ecyl;
		FUNC9(p + 8, entry->ent.dp_start);
		FUNC9(p + 12, entry->ent.dp_size);

		next = FUNC1(baseentry, gpe_entry);
		while (next != NULL && next->gpe_deleted)
			next = FUNC1(next, gpe_entry);

		p += DOSPARTSIZE;
		if (next != NULL)
			FUNC4(basetable, (uint32_t)next->gpe_start,
			    (uint32_t)next->gpe_end, p);
		else
			FUNC3(p, DOSPARTSIZE);

		error = FUNC7(cp, baseentry->gpe_start * pp->sectorsize,
		    buf, pp->sectorsize);
#ifndef GEOM_PART_EBR_COMPAT
		if (baseentry->gpe_start == 0)
			FUNC3(buf, DOSPARTOFF);
#endif
		baseentry = next;
	} while (!error && baseentry != NULL);

 out:
	FUNC5(buf);
	return (error);
}