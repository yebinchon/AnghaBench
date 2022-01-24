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
struct merge_list {size_t stage; int mode; char* path; TYPE_2__* blob; struct merge_list* link; } ;
struct TYPE_3__ {int /*<<< orphan*/  oid; } ;
struct TYPE_4__ {TYPE_1__ object; } ;

/* Variables and functions */
 char* FUNC0 (struct merge_list*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,...) ; 

__attribute__((used)) static void FUNC3(struct merge_list *entry)
{
	FUNC2("%s\n", FUNC0(entry));
	do {
		struct merge_list *link = entry->link;
		static const char *desc[4] = { "result", "base", "our", "their" };
		FUNC2("  %-6s %o %s %s\n", desc[entry->stage], entry->mode, FUNC1(&entry->blob->object.oid), entry->path);
		entry = link;
	} while (entry);
}