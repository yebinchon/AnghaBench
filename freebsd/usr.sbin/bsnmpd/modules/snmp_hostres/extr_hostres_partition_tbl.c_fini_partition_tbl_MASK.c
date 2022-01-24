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
struct partition_map_entry {struct partition_map_entry* id; struct partition_map_entry* entry; struct partition_map_entry* label; } ;

/* Variables and functions */
 struct partition_map_entry* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct partition_map_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct partition_map_entry*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  partition_map ; 
 int /*<<< orphan*/  partition_tbl ; 

void
FUNC6(void)
{
	struct partition_map_entry *m;

	while ((m = FUNC0(&partition_map)) != NULL) {
		FUNC1(&partition_map, link);
		if(m->entry != NULL) {
			FUNC3(&partition_tbl, m->entry, link);
			FUNC5(m->entry->id);
			FUNC5(m->entry->label);
			FUNC5(m->entry);
		}
		FUNC5(m->id);
		FUNC5(m);
	}
	FUNC4(FUNC2(&partition_tbl));
}