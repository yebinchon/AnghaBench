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

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int scenarios_count ; 

void
FUNC2(void)
{
	int i, error;

	for (i = 0; i < scenarios_count; i++) {
		error = FUNC0(i);
		if (error)
			FUNC1("enact_scenario");
	}
}