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
struct fs_map_entry {struct fs_map_entry* a_name; struct fs_map_entry* entry; struct fs_map_entry* remoteMountPoint; struct fs_map_entry* mountPoint; } ;

/* Variables and functions */
 struct fs_map_entry* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct fs_map_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fs_map_entry*) ; 
 int /*<<< orphan*/  fs_map ; 
 int /*<<< orphan*/  fs_tbl ; 
 int /*<<< orphan*/  link ; 

void
FUNC6(void)
{
	struct fs_map_entry *n1;

     	while ((n1 = FUNC0(&fs_map)) != NULL) {
		FUNC1(&fs_map, link);
		if (n1->entry != NULL) {
			FUNC3(&fs_tbl, n1->entry, link);
			FUNC5(n1->entry->mountPoint);
			FUNC5(n1->entry->remoteMountPoint);
			FUNC5(n1->entry);
		}
		FUNC5(n1->a_name);
		FUNC5(n1);
     	}
	FUNC4(FUNC2(&fs_tbl));
}