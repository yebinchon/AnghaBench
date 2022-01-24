#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct g_part_table {int dummy; } ;
struct g_part_entry {int dummy; } ;
struct TYPE_4__ {scalar_t__ dp_typ; } ;
struct g_part_ebr_entry {TYPE_1__ ent; } ;
struct TYPE_5__ {scalar_t__ typ; int /*<<< orphan*/  alias; } ;

/* Variables and functions */
 TYPE_2__* ebr_alias_match ; 
 char const* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*,int) ; 

__attribute__((used)) static const char *
FUNC3(struct g_part_table *basetable, struct g_part_entry *baseentry,
    char *buf, size_t bufsz)
{
	struct g_part_ebr_entry *entry;
	int i;

	entry = (struct g_part_ebr_entry *)baseentry;
	for (i = 0; i < FUNC1(ebr_alias_match); i++) {
		if (ebr_alias_match[i].typ == entry->ent.dp_typ)
			return (FUNC0(ebr_alias_match[i].alias));
	}
	FUNC2(buf, bufsz, "!%d", entry->ent.dp_typ);
	return (buf);
}