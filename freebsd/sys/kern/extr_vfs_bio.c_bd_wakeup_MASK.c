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
 int bd_request ; 
 int /*<<< orphan*/  bdlock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 

__attribute__((used)) static void
FUNC3(void)
{

	FUNC0(&bdlock);
	if (bd_request == 0) {
		bd_request = 1;
		FUNC2(&bd_request);
	}
	FUNC1(&bdlock);
}