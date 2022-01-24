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
struct string_list_item {char* string; } ;
struct show_info {char* width; struct ref_states* states; } ;
struct ref_states {int /*<<< orphan*/  stale; int /*<<< orphan*/  tracked; TYPE_1__* remote; int /*<<< orphan*/  new_refs; scalar_t__ queried; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int FUNC3(struct string_list_item *item, void *cb_data)
{
	struct show_info *info = cb_data;
	struct ref_states *states = info->states;
	const char *name = item->string;

	if (states->queried) {
		const char *fmt = "%s";
		const char *arg = "";
		if (FUNC2(&states->new_refs, name)) {
			fmt = FUNC0(" new (next fetch will store in remotes/%s)");
			arg = states->remote->name;
		} else if (FUNC2(&states->tracked, name))
			arg = FUNC0(" tracked");
		else if (FUNC2(&states->stale, name))
			arg = FUNC0(" stale (use 'git remote prune' to remove)");
		else
			arg = FUNC0(" ???");
		FUNC1("    %-*s", info->width, name);
		FUNC1(fmt, arg);
		FUNC1("\n");
	} else
		FUNC1("    %s\n", name);

	return 0;
}