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
struct sbuf {int dummy; } ;
struct g_part_table {int dummy; } ;
struct g_part_entry {int dummy; } ;
struct TYPE_2__ {char const* dp_typ; int dp_flag; } ;
struct g_part_ebr_entry {TYPE_1__ ent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sbuf*,char*,char const*,...) ; 

__attribute__((used)) static void
FUNC1(struct g_part_table *table, struct g_part_entry *baseentry,
    struct sbuf *sb, const char *indent)
{
	struct g_part_ebr_entry *entry;

	entry = (struct g_part_ebr_entry *)baseentry;
	if (indent == NULL) {
		/* conftxt: libdisk compatibility */
		FUNC0(sb, " xs MBREXT xt %u", entry->ent.dp_typ);
	} else if (entry != NULL) {
		/* confxml: partition entry information */
		FUNC0(sb, "%s<rawtype>%u</rawtype>\n", indent,
		    entry->ent.dp_typ);
		if (entry->ent.dp_flag & 0x80)
			FUNC0(sb, "%s<attrib>active</attrib>\n", indent);
	} else {
		/* confxml: scheme information */
	}
}