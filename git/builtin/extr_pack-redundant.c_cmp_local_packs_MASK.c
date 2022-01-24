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
struct pack_list {struct pack_list* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pack_list*,struct pack_list*) ; 
 struct pack_list* local_packs ; 

__attribute__((used)) static void FUNC1(void)
{
	struct pack_list *subset, *pl = local_packs;

	while ((subset = pl)) {
		while ((subset = subset->next))
			FUNC0(pl, subset);
		pl = pl->next;
	}
}