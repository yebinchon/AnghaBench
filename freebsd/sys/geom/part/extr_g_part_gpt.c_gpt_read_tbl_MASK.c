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
struct gpt_hdr {unsigned int hdr_lba_table; unsigned int hdr_entries; unsigned int hdr_entsz; scalar_t__ hdr_crc_table; } ;
struct gpt_ent {char* ent_name; void* ent_attr; void* ent_lba_end; void* ent_lba_start; int /*<<< orphan*/  ent_uuid; int /*<<< orphan*/  ent_type; } ;
struct g_provider {unsigned int sectorsize; } ;
struct g_part_gpt_table {unsigned int* lba; int /*<<< orphan*/ * state; } ;
struct g_consumer {struct g_provider* provider; } ;
typedef  enum gpt_elt { ____Placeholder_gpt_elt } gpt_elt ;

/* Variables and functions */
 int /*<<< orphan*/  GPT_STATE_CORRUPT ; 
 int /*<<< orphan*/  GPT_STATE_MISSING ; 
 int /*<<< orphan*/  GPT_STATE_OK ; 
 unsigned int MAXPHYS ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 scalar_t__ FUNC1 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 void* FUNC3 (int,int) ; 
 char* FUNC4 (struct g_consumer*,unsigned int,unsigned int,int*) ; 
 unsigned int FUNC5 (unsigned int,unsigned int) ; 
 void* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct gpt_ent *
FUNC8(struct g_part_gpt_table *table, struct g_consumer *cp,
    enum gpt_elt elt, struct gpt_hdr *hdr)
{
	struct g_provider *pp;
	struct gpt_ent *ent, *tbl;
	char *buf, *p;
	unsigned int idx, sectors, tblsz, size;
	int error;

	if (hdr == NULL)
		return (NULL);

	pp = cp->provider;
	table->lba[elt] = hdr->hdr_lba_table;

	table->state[elt] = GPT_STATE_MISSING;
	tblsz = hdr->hdr_entries * hdr->hdr_entsz;
	sectors = FUNC5(tblsz, pp->sectorsize);
	buf = FUNC3(sectors * pp->sectorsize, M_WAITOK | M_ZERO);
	for (idx = 0; idx < sectors; idx += MAXPHYS / pp->sectorsize) {
		size = (sectors - idx > MAXPHYS / pp->sectorsize) ?  MAXPHYS:
		    (sectors - idx) * pp->sectorsize;
		p = FUNC4(cp, (table->lba[elt] + idx) * pp->sectorsize,
		    size, &error);
		if (p == NULL) {
			FUNC2(buf);
			return (NULL);
		}
		FUNC0(p, buf + idx * pp->sectorsize, size);
		FUNC2(p);
	}
	table->state[elt] = GPT_STATE_CORRUPT;
	if (FUNC1(buf, tblsz) != hdr->hdr_crc_table) {
		FUNC2(buf);
		return (NULL);
	}

	table->state[elt] = GPT_STATE_OK;
	tbl = FUNC3(hdr->hdr_entries * sizeof(struct gpt_ent),
	    M_WAITOK | M_ZERO);

	for (idx = 0, ent = tbl, p = buf;
	     idx < hdr->hdr_entries;
	     idx++, ent++, p += hdr->hdr_entsz) {
		FUNC7(p, &ent->ent_type);
		FUNC7(p + 16, &ent->ent_uuid);
		ent->ent_lba_start = FUNC6(p + 32);
		ent->ent_lba_end = FUNC6(p + 40);
		ent->ent_attr = FUNC6(p + 48);
		/* Keep UTF-16 in little-endian. */
		FUNC0(p + 56, ent->ent_name, sizeof(ent->ent_name));
	}

	FUNC2(buf);
	return (tbl);
}