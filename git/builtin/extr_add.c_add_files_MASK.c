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
struct dir_struct {int ignored_nr; int nr; TYPE_2__** entries; TYPE_1__** ignored; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ignore_add_errors ; 
 char* ignore_error ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  the_index ; 

__attribute__((used)) static int FUNC5(struct dir_struct *dir, int flags)
{
	int i, exit_status = 0;

	if (dir->ignored_nr) {
		FUNC4(stderr, "%s", FUNC0(ignore_error));
		for (i = 0; i < dir->ignored_nr; i++)
			FUNC4(stderr, "%s\n", dir->ignored[i]->name);
		FUNC4(stderr, "%s", FUNC0("Use -f if you really want to add them.\n"));
		exit_status = 1;
	}

	for (i = 0; i < dir->nr; i++) {
		if (FUNC1(&the_index, dir->entries[i]->name, flags)) {
			if (!ignore_add_errors)
				FUNC3(FUNC0("adding files failed"));
			exit_status = 1;
		} else {
			FUNC2(dir->entries[i]->name);
		}
	}
	return exit_status;
}