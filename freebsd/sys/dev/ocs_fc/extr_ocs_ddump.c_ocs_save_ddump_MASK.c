#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  ddump_saved; } ;
typedef  TYPE_1__ ocs_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int32_t
FUNC5(ocs_t *ocs, uint32_t flags, uint32_t qentries)
{
	if (FUNC3(&ocs->ddump_saved) > 0) {
		FUNC1(ocs, "Saved ddump already exists\n");
		return 1;
	}

	if (!FUNC4(&ocs->ddump_saved)) {
		FUNC2(ocs, "Saved ddump not allocated\n");
		return -1;
	}

	FUNC1(ocs, "Saving ddump\n");
	FUNC0(ocs, &ocs->ddump_saved, flags, qentries);
	FUNC1(ocs, "Saved ddump: %d bytes written\n", FUNC3(&ocs->ddump_saved));
	return 0;
}