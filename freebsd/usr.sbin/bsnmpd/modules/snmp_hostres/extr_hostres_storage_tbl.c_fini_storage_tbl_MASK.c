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
struct storage_map_entry {struct storage_map_entry* a_name; struct storage_map_entry* entry; struct storage_map_entry* descr; } ;

/* Variables and functions */
 struct storage_map_entry* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct storage_map_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct storage_map_entry*) ; 
 struct storage_map_entry* fs_buf ; 
 scalar_t__ fs_buf_count ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  storage_map ; 
 int /*<<< orphan*/  storage_tbl ; 
 struct storage_map_entry* swap_devs ; 
 scalar_t__ swap_devs_len ; 

void
FUNC6(void)
{
	struct storage_map_entry *n1;

	if (swap_devs != NULL) {
		FUNC5(swap_devs);
		swap_devs = NULL;
	}
	swap_devs_len = 0;

	if (fs_buf != NULL) {
		FUNC5(fs_buf);
		fs_buf = NULL;
	}
	fs_buf_count = 0;

	while ((n1 = FUNC0(&storage_map)) != NULL) {
		FUNC1(&storage_map, link);
		if (n1->entry != NULL) {
			FUNC3(&storage_tbl, n1->entry, link);
			FUNC5(n1->entry->descr);
			FUNC5(n1->entry);
		}
		FUNC5(n1->a_name);
		FUNC5(n1);
	}
	FUNC4(FUNC2(&storage_tbl));
}