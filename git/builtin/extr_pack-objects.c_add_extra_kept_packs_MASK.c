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
struct string_list {int nr; TYPE_1__* items; } ;
struct packed_git {int pack_keep_in_core; int /*<<< orphan*/  pack_local; int /*<<< orphan*/  pack_name; struct packed_git* next; } ;
struct TYPE_2__ {int /*<<< orphan*/  string; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 struct packed_git* FUNC2 (int /*<<< orphan*/ ) ; 
 int ignore_packed_keep_in_core ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static void FUNC3(const struct string_list *names)
{
	struct packed_git *p;

	if (!names->nr)
		return;

	for (p = FUNC2(the_repository); p; p = p->next) {
		const char *name = FUNC0(p->pack_name);
		int i;

		if (!p->pack_local)
			continue;

		for (i = 0; i < names->nr; i++)
			if (!FUNC1(name, names->items[i].string))
				break;

		if (i < names->nr) {
			p->pack_keep_in_core = 1;
			ignore_packed_keep_in_core = 1;
			continue;
		}
	}
}