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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  AUDIT_PIPE_NAME ; 
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  audit_pipe_cdevsw ; 
 int /*<<< orphan*/ * audit_pipe_dev ; 
 int /*<<< orphan*/  audit_pipe_list ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(void *unused)
{

	FUNC2(&audit_pipe_list);
	FUNC1();
	audit_pipe_dev = FUNC3(&audit_pipe_cdevsw, 0, UID_ROOT,
		GID_WHEEL, 0600, "%s", AUDIT_PIPE_NAME);
	if (audit_pipe_dev == NULL) {
		FUNC0();
		FUNC4("Can't initialize audit pipe subsystem");
	}
}