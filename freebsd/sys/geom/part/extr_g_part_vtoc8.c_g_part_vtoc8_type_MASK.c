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
typedef  scalar_t__ uint16_t ;
struct TYPE_4__ {TYPE_1__* part; } ;
struct g_part_vtoc8_table {TYPE_2__ vtoc; } ;
struct g_part_table {int dummy; } ;
struct g_part_entry {int gpe_index; } ;
struct TYPE_3__ {int /*<<< orphan*/  tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  G_PART_ALIAS_FREEBSD_NANDFS ; 
 int /*<<< orphan*/  G_PART_ALIAS_FREEBSD_SWAP ; 
 int /*<<< orphan*/  G_PART_ALIAS_FREEBSD_UFS ; 
 int /*<<< orphan*/  G_PART_ALIAS_FREEBSD_VINUM ; 
 int /*<<< orphan*/  G_PART_ALIAS_FREEBSD_ZFS ; 
 scalar_t__ VTOC_TAG_FREEBSD_NANDFS ; 
 scalar_t__ VTOC_TAG_FREEBSD_SWAP ; 
 scalar_t__ VTOC_TAG_FREEBSD_UFS ; 
 scalar_t__ VTOC_TAG_FREEBSD_VINUM ; 
 scalar_t__ VTOC_TAG_FREEBSD_ZFS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 char const* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*,scalar_t__) ; 

__attribute__((used)) static const char *
FUNC3(struct g_part_table *basetable, struct g_part_entry *entry,
    char *buf, size_t bufsz)
{
	struct g_part_vtoc8_table *table;
	uint16_t tag;

	table = (struct g_part_vtoc8_table *)basetable;
	tag = FUNC0(&table->vtoc.part[entry->gpe_index - 1].tag);
	if (tag == VTOC_TAG_FREEBSD_NANDFS)
		return (FUNC1(G_PART_ALIAS_FREEBSD_NANDFS));
	if (tag == VTOC_TAG_FREEBSD_SWAP)
		return (FUNC1(G_PART_ALIAS_FREEBSD_SWAP));
	if (tag == VTOC_TAG_FREEBSD_UFS)
		return (FUNC1(G_PART_ALIAS_FREEBSD_UFS));
	if (tag == VTOC_TAG_FREEBSD_VINUM)
		return (FUNC1(G_PART_ALIAS_FREEBSD_VINUM));
	if (tag == VTOC_TAG_FREEBSD_ZFS)
		return (FUNC1(G_PART_ALIAS_FREEBSD_ZFS));
	FUNC2(buf, bufsz, "!%d", tag);
	return (buf);
}