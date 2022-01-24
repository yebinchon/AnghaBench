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
struct string_list {int dummy; } ;
struct packed_git {unsigned long pack_size; int /*<<< orphan*/  pack_name; int /*<<< orphan*/  pack_local; struct packed_git* next; } ;

/* Variables and functions */
 struct packed_git* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static struct packed_git *FUNC2(struct string_list *packs,
					  unsigned long limit)
{
	struct packed_git *p, *base = NULL;

	for (p = FUNC0(the_repository); p; p = p->next) {
		if (!p->pack_local)
			continue;
		if (limit) {
			if (p->pack_size >= limit)
				FUNC1(packs, p->pack_name);
		} else if (!base || base->pack_size < p->pack_size) {
			base = p;
		}
	}

	if (base)
		FUNC1(packs, base->pack_name);

	return base;
}