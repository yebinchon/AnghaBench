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
struct swins_map_entry {struct swins_map_entry* name; struct swins_map_entry* entry; } ;

/* Variables and functions */
 struct swins_map_entry* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct swins_map_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct swins_map_entry*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  swins_map ; 
 int /*<<< orphan*/  swins_tbl ; 

void
FUNC6(void)
{
	struct swins_map_entry  *n1;

	while ((n1 = FUNC0(&swins_map)) != NULL) {
		FUNC1(&swins_map, link);
		if (n1->entry != NULL) {
			FUNC3(&swins_tbl, n1->entry, link);
			FUNC5(n1->entry->name);
			FUNC5(n1->entry);
		}
		FUNC5(n1->name);
		FUNC5(n1);
	}
	FUNC4(FUNC2(&swins_tbl));
}