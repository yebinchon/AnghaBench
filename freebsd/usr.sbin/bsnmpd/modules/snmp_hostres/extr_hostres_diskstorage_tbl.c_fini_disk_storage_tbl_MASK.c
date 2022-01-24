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
struct disk_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 struct disk_entry* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct disk_entry*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 struct disk_entry* disk_list ; 
 int /*<<< orphan*/  disk_tbl ; 
 int /*<<< orphan*/  FUNC3 (struct disk_entry*) ; 
 int /*<<< orphan*/  link ; 
 int md_fd ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

void
FUNC5(void)
{
	struct disk_entry *n1;

	while ((n1 = FUNC0(&disk_tbl)) != NULL) {
		FUNC1(&disk_tbl, n1, link);
		FUNC3(n1);
	}

	FUNC3(disk_list);

	if (md_fd > 0) {
		if (FUNC2(md_fd) == -1)
			FUNC4(LOG_ERR,"close (/dev/mdctl) failed: %m");
		md_fd = -1;
	}
}