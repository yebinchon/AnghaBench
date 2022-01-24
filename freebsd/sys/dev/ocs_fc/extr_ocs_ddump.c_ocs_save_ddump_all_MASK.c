#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  ddump_saved; } ;
typedef  TYPE_1__ ocs_t ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_SAVED_DUMP_SIZE ; 
 TYPE_1__* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int32_t
FUNC4(uint32_t flags, uint32_t qentries, uint32_t alloc_flag)
{
	ocs_t *ocs;
	uint32_t i;
	int32_t rc = 0;

	for (i = 0; (ocs = FUNC0(i)) != NULL; i++) {
		if (alloc_flag && (!FUNC3(&ocs->ddump_saved))) {
			rc = FUNC2(ocs, &ocs->ddump_saved, DEFAULT_SAVED_DUMP_SIZE);
			if (rc) {
				break;
			}
		}

		rc = FUNC1(ocs, flags, qentries);
		if (rc < 0) {
			break;
		}
	}
	return rc;
}