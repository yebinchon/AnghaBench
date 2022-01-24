#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ddump_saved; } ;
typedef  TYPE_1__ ocs_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int32_t
FUNC3(ocs_t *ocs)
{
	/* if there's a saved ddump, copy to newly allocated textbuf */
	if (FUNC1(&ocs->ddump_saved)) {
		FUNC0(ocs, "saved ddump cleared\n");
		FUNC2(&ocs->ddump_saved);
		return 0;
	} else {
		FUNC0(ocs, "no saved ddump found\n");
		return 1;
	}
}