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
typedef  int /*<<< orphan*/  uintmax_t ;
struct sbuf {int dummy; } ;
struct g_part_table {int dummy; } ;
struct g_part_entry {int dummy; } ;
struct g_part_bsd64_table {int /*<<< orphan*/  d_packname; int /*<<< orphan*/  d_stor_uuid; scalar_t__ d_abase; scalar_t__ d_bbase; } ;
struct g_part_bsd64_entry {char const* fstype; int /*<<< orphan*/  stor_uuid; int /*<<< orphan*/  type_uuid; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bsd64_uuid_unused ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct sbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct g_part_table *basetable,
    struct g_part_entry *baseentry, struct sbuf *sb, const char *indent)
{
	struct g_part_bsd64_table *table;
	struct g_part_bsd64_entry *entry;
	char buf[sizeof(table->d_packname)];

	entry = (struct g_part_bsd64_entry *)baseentry;
	if (indent == NULL) {
		/* conftxt: libdisk compatibility */
		FUNC3(sb, " xs BSD64 xt %u", entry->fstype);
	} else if (entry != NULL) {
		/* confxml: partition entry information */
		FUNC3(sb, "%s<rawtype>%u</rawtype>\n", indent,
		    entry->fstype);
		if (!FUNC0(&bsd64_uuid_unused, &entry->type_uuid)) {
			FUNC3(sb, "%s<type_uuid>", indent);
			FUNC4(sb, &entry->type_uuid);
			FUNC2(sb, "</type_uuid>\n");
		}
		FUNC3(sb, "%s<stor_uuid>", indent);
		FUNC4(sb, &entry->stor_uuid);
		FUNC2(sb, "</stor_uuid>\n");
	} else {
		/* confxml: scheme information */
		table = (struct g_part_bsd64_table *)basetable;
		FUNC3(sb, "%s<bootbase>%ju</bootbase>\n", indent,
		    (uintmax_t)table->d_bbase);
		if (table->d_abase)
			FUNC3(sb, "%s<backupbase>%ju</backupbase>\n",
			    indent, (uintmax_t)table->d_abase);
		FUNC3(sb, "%s<stor_uuid>", indent);
		FUNC4(sb, &table->d_stor_uuid);
		FUNC2(sb, "</stor_uuid>\n");
		FUNC3(sb, "%s<label>", indent);
		FUNC5(buf, table->d_packname, sizeof(buf) - 1);
		buf[sizeof(buf) - 1] = '\0';
		FUNC1(sb, buf);
		FUNC2(sb, "</label>\n");
	}
}