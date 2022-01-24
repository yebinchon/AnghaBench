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
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_IOCTL ; 
 unsigned long const CTL_ISCSI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,unsigned long const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ctl_fd ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long const*) ; 

void
FUNC9(void)
{
	cap_rights_t rights;
	const unsigned long cmds[] = { CTL_ISCSI };

	FUNC0(&rights, CAP_IOCTL);
	if (FUNC4(ctl_fd, &rights) < 0)
		FUNC6(1, "cap_rights_limit");

	if (FUNC3(ctl_fd, cmds, FUNC8(cmds)) < 0)
		FUNC6(1, "cap_ioctls_limit");

	if (FUNC2() < 0)
		FUNC6(1, "cap_enter");

	if (FUNC1())
		FUNC5("Capsicum capability mode enabled");
	else
		FUNC7("Capsicum capability mode not supported");
}