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
struct g_part_table {int dummy; } ;
struct TYPE_4__ {scalar_t__ gpe_start; scalar_t__ gpe_end; int /*<<< orphan*/  gpe_index; } ;
struct TYPE_3__ {int ent_attr; int /*<<< orphan*/  ent_uuid; int /*<<< orphan*/  ent_type; int /*<<< orphan*/  ent_name; } ;
struct g_part_gpt_entry {TYPE_2__ base; TYPE_1__ ent; } ;
struct g_part_entry {int dummy; } ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 int GPT_ENT_ATTR_BOOTFAILED ; 
 int GPT_ENT_ATTR_BOOTME ; 
 int GPT_ENT_ATTR_BOOTONCE ; 
 int /*<<< orphan*/  FUNC0 (struct sbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct g_part_table *table, struct g_part_entry *baseentry,
    struct sbuf *sb, const char *indent)
{
	struct g_part_gpt_entry *entry;

	entry = (struct g_part_gpt_entry *)baseentry;
	if (indent == NULL) {
		/* conftxt: libdisk compatibility */
		FUNC1(sb, " xs GPT xt ");
		FUNC3(sb, &entry->ent.ent_type);
	} else if (entry != NULL) {
		/* confxml: partition entry information */
		FUNC2(sb, "%s<label>", indent);
		FUNC0(sb, entry->ent.ent_name,
		    sizeof(entry->ent.ent_name) >> 1);
		FUNC1(sb, "</label>\n");
		if (entry->ent.ent_attr & GPT_ENT_ATTR_BOOTME)
			FUNC2(sb, "%s<attrib>bootme</attrib>\n", indent);
		if (entry->ent.ent_attr & GPT_ENT_ATTR_BOOTONCE) {
			FUNC2(sb, "%s<attrib>bootonce</attrib>\n",
			    indent);
		}
		if (entry->ent.ent_attr & GPT_ENT_ATTR_BOOTFAILED) {
			FUNC2(sb, "%s<attrib>bootfailed</attrib>\n",
			    indent);
		}
		FUNC2(sb, "%s<rawtype>", indent);
		FUNC3(sb, &entry->ent.ent_type);
		FUNC1(sb, "</rawtype>\n");
		FUNC2(sb, "%s<rawuuid>", indent);
		FUNC3(sb, &entry->ent.ent_uuid);
		FUNC1(sb, "</rawuuid>\n");
		FUNC2(sb, "%s<efimedia>", indent);
		FUNC2(sb, "HD(%d,GPT,", entry->base.gpe_index);
		FUNC3(sb, &entry->ent.ent_uuid);
		FUNC2(sb, ",%#jx,%#jx)", (intmax_t)entry->base.gpe_start,
		    (intmax_t)(entry->base.gpe_end - entry->base.gpe_start + 1));
		FUNC1(sb, "</efimedia>\n");
	} else {
		/* confxml: scheme information */
	}
}