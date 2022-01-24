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
 int /*<<< orphan*/  cur_fd ; 
 int first_stop ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int stop_pending ; 
 int stopped_vcpu ; 

__attribute__((used)) static void
FUNC3(void)
{

	if (first_stop) {
		first_stop = false;
		stopped_vcpu = -1;
	} else if (FUNC1())
		stop_pending = true;
	else {
		FUNC0();
		FUNC2(cur_fd);
	}
}