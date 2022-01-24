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
typedef  int /*<<< orphan*/  ocs_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_DEBUG_ENABLE_MQ_DUMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static int
FUNC3(ocs_t *ocs, char *name, char *value)
{
	int result;

	if (FUNC2(value, "false") == 0) {
		FUNC0(OCS_DEBUG_ENABLE_MQ_DUMP);
		result = 0;
	} else if (FUNC2(value, "true") == 0) {
		FUNC1(OCS_DEBUG_ENABLE_MQ_DUMP);
		result = 0;
	} else {
		result = -1;
	}

	return result;
}