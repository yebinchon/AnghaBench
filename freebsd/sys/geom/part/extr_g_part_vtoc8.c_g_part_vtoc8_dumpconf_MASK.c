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
struct sbuf {int dummy; } ;
struct TYPE_4__ {TYPE_1__* part; int /*<<< orphan*/  altcyls; int /*<<< orphan*/  nheads; int /*<<< orphan*/  nsecs; } ;
struct g_part_vtoc8_table {TYPE_2__ vtoc; } ;
struct g_part_table {int dummy; } ;
struct g_part_entry {int gpe_index; } ;
struct TYPE_3__ {int /*<<< orphan*/  tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*,char*,char const*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void
FUNC2(struct g_part_table *basetable,
    struct g_part_entry *entry, struct sbuf *sb, const char *indent)
{
	struct g_part_vtoc8_table *table;

	table = (struct g_part_vtoc8_table *)basetable;
	if (indent == NULL) {
		/* conftxt: libdisk compatibility */
		FUNC1(sb, " xs SUN sc %u hd %u alt %u",
		    FUNC0(&table->vtoc.nsecs), FUNC0(&table->vtoc.nheads),
		    FUNC0(&table->vtoc.altcyls));
	} else if (entry != NULL) {
		/* confxml: partition entry information */
		FUNC1(sb, "%s<rawtype>%u</rawtype>\n", indent,
		    FUNC0(&table->vtoc.part[entry->gpe_index - 1].tag));
	} else {
		/* confxml: scheme information */
	}
}