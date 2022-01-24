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
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ ucom_close_refs ; 
 int /*<<< orphan*/  ucom_mtx ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC4(void *arg)
{
	FUNC0(&ucom_mtx);
	while (ucom_close_refs > 0) {
		FUNC2("ucom: Waiting for all detached TTY "
		    "devices to have open fds closed.\n");
		FUNC3(&ucom_mtx, hz);
	}
	FUNC1(&ucom_mtx);
}