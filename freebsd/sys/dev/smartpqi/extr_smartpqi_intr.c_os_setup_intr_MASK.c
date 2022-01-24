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
struct TYPE_5__ {scalar_t__ intr_type; } ;
typedef  TYPE_1__ pqisrc_softstate_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ INTR_TYPE_FIXED ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 

int FUNC3(pqisrc_softstate_t *softs)
{
	int error = 0;

	FUNC0("IN\n");

	if (softs->intr_type == INTR_TYPE_FIXED) {
		error = FUNC1(softs);
	}
	else {
		error = FUNC2(softs);
	}
	if (error) {
		FUNC0("OUT failed error = %d\n", error);
		return error;
	}

	FUNC0("OUT error = %d\n", error);

	return error;
}