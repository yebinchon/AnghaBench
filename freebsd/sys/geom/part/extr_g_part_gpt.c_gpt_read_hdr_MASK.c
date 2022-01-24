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
typedef  int uint32_t ;
struct gpt_hdr {int hdr_size; int hdr_crc_self; int hdr_revision; int hdr_lba_self; int hdr_lba_alt; int hdr_lba_start; int hdr_lba_end; int hdr_entries; int hdr_entsz; int hdr_lba_table; int hdr_crc_table; int /*<<< orphan*/  hdr_uuid; int /*<<< orphan*/  hdr_sig; } ;
struct g_provider {int mediasize; int sectorsize; } ;
struct g_part_gpt_table {scalar_t__* state; int* lba; } ;
struct g_consumer {struct g_provider* provider; } ;
typedef  int quad_t ;
typedef  enum gpt_elt { ____Placeholder_gpt_elt } gpt_elt ;

/* Variables and functions */
 size_t GPT_ELT_PRIHDR ; 
 int GPT_ELT_SECHDR ; 
 scalar_t__ GPT_HDR_REVISION ; 
 int /*<<< orphan*/  GPT_HDR_SIG ; 
 scalar_t__ GPT_STATE_CORRUPT ; 
 scalar_t__ GPT_STATE_INVALID ; 
 scalar_t__ GPT_STATE_MISSING ; 
 scalar_t__ GPT_STATE_OK ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct gpt_hdr*,struct gpt_hdr*,int) ; 
 int FUNC1 (struct gpt_hdr*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gpt_hdr*) ; 
 struct gpt_hdr* FUNC3 (int,int) ; 
 struct gpt_hdr* FUNC4 (struct g_consumer*,int,int,int*) ; 
 int FUNC5 (int,int) ; 
 void* FUNC6 (int) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct gpt_hdr *
FUNC10(struct g_part_gpt_table *table, struct g_consumer *cp,
    enum gpt_elt elt)
{
	struct gpt_hdr *buf, *hdr;
	struct g_provider *pp;
	quad_t lba, last;
	int error;
	uint32_t crc, sz;

	pp = cp->provider;
	last = (pp->mediasize / pp->sectorsize) - 1;
	table->state[elt] = GPT_STATE_MISSING;
	/*
	 * If the primary header is valid look for secondary
	 * header in AlternateLBA, otherwise in the last medium's LBA.
	 */
	if (elt == GPT_ELT_SECHDR) {
		if (table->state[GPT_ELT_PRIHDR] != GPT_STATE_OK)
			table->lba[elt] = last;
	} else
		table->lba[elt] = 1;
	buf = FUNC4(cp, table->lba[elt] * pp->sectorsize, pp->sectorsize,
	    &error);
	if (buf == NULL)
		return (NULL);
	hdr = NULL;
	if (FUNC9(buf->hdr_sig, GPT_HDR_SIG, sizeof(buf->hdr_sig)) != 0)
		goto fail;

	table->state[elt] = GPT_STATE_CORRUPT;
	sz = FUNC6(buf->hdr_size);
	if (sz < 92 || sz > pp->sectorsize)
		goto fail;

	hdr = FUNC3(sz, M_WAITOK | M_ZERO);
	FUNC0(buf, hdr, sz);
	hdr->hdr_size = sz;

	crc = FUNC6(buf->hdr_crc_self);
	buf->hdr_crc_self = 0;
	if (FUNC1(buf, sz) != crc)
		goto fail;
	hdr->hdr_crc_self = crc;

	table->state[elt] = GPT_STATE_INVALID;
	hdr->hdr_revision = FUNC6(buf->hdr_revision);
	if (hdr->hdr_revision < GPT_HDR_REVISION)
		goto fail;
	hdr->hdr_lba_self = FUNC7(buf->hdr_lba_self);
	if (hdr->hdr_lba_self != table->lba[elt])
		goto fail;
	hdr->hdr_lba_alt = FUNC7(buf->hdr_lba_alt);
	if (hdr->hdr_lba_alt == hdr->hdr_lba_self ||
	    hdr->hdr_lba_alt > last)
		goto fail;

	/* Check the managed area. */
	hdr->hdr_lba_start = FUNC7(buf->hdr_lba_start);
	if (hdr->hdr_lba_start < 2 || hdr->hdr_lba_start >= last)
		goto fail;
	hdr->hdr_lba_end = FUNC7(buf->hdr_lba_end);
	if (hdr->hdr_lba_end < hdr->hdr_lba_start || hdr->hdr_lba_end >= last)
		goto fail;

	/* Check the table location and size of the table. */
	hdr->hdr_entries = FUNC6(buf->hdr_entries);
	hdr->hdr_entsz = FUNC6(buf->hdr_entsz);
	if (hdr->hdr_entries == 0 || hdr->hdr_entsz < 128 ||
	    (hdr->hdr_entsz & 7) != 0)
		goto fail;
	hdr->hdr_lba_table = FUNC7(buf->hdr_lba_table);
	if (hdr->hdr_lba_table < 2 || hdr->hdr_lba_table >= last)
		goto fail;
	if (hdr->hdr_lba_table >= hdr->hdr_lba_start &&
	    hdr->hdr_lba_table <= hdr->hdr_lba_end)
		goto fail;
	lba = hdr->hdr_lba_table +
	    FUNC5(hdr->hdr_entries * hdr->hdr_entsz, pp->sectorsize) - 1;
	if (lba >= last)
		goto fail;
	if (lba >= hdr->hdr_lba_start && lba <= hdr->hdr_lba_end)
		goto fail;

	table->state[elt] = GPT_STATE_OK;
	FUNC8(&buf->hdr_uuid, &hdr->hdr_uuid);
	hdr->hdr_crc_table = FUNC6(buf->hdr_crc_table);

	/* save LBA for secondary header */
	if (elt == GPT_ELT_PRIHDR)
		table->lba[GPT_ELT_SECHDR] = hdr->hdr_lba_alt;

	FUNC2(buf);
	return (hdr);

 fail:
	if (hdr != NULL)
		FUNC2(hdr);
	FUNC2(buf);
	return (NULL);
}