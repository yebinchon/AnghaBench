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
 scalar_t__ PRIBIO ; 
 int /*<<< orphan*/  bdirtylock ; 
 int bdirtywait ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *,scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(void)
{

	if (FUNC0()) {
		FUNC2(&bdirtylock);
		while (FUNC0()) {
			bdirtywait = 1;
			FUNC1(&bdirtywait, &bdirtylock, (PRIBIO + 4),
			    "flswai", 0);
		}
		FUNC3(&bdirtylock);
	}
}