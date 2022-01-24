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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * i_ptr ; 
 scalar_t__ i_size ; 
 int /*<<< orphan*/ * i_womp ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ ** tibuf ; 
 int tifd ; 
 int* tiline ; 
 scalar_t__ tireclen ; 
 int using_plan_a ; 

void
FUNC3(void)
{
	if (using_plan_a) {
		FUNC1(i_ptr);
		i_ptr = NULL;
		if (i_womp != NULL) {
			FUNC2(i_womp, i_size);
			i_womp = NULL;
		}
		i_size = 0;
	} else {
		using_plan_a = true;	/* maybe the next one is smaller */
		FUNC0(tifd);
		tifd = -1;
		FUNC1(tibuf[0]);
		FUNC1(tibuf[1]);
		tibuf[0] = tibuf[1] = NULL;
		tiline[0] = tiline[1] = -1;
		tireclen = 0;
	}
}