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
 int ENOMEM ; 
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  PF_NAME ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pf_cdevsw ; 
 int /*<<< orphan*/ * pf_dev ; 
 int /*<<< orphan*/  pf_end_lock ; 
 scalar_t__ pf_end_threads ; 
 int /*<<< orphan*/  pf_ioctl_lock ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  pf_purge_proc ; 
 int /*<<< orphan*/  pf_purge_thread ; 
 int /*<<< orphan*/  pf_rules_lock ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC6(void)
{
	int error;

	FUNC4(&pf_rules_lock, "pf rulesets");
	FUNC5(&pf_ioctl_lock, "pf ioctl");
	FUNC5(&pf_end_lock, "pf end thread");

	FUNC2();

	pf_dev = FUNC1(&pf_cdevsw, 0, UID_ROOT, GID_WHEEL, 0600, PF_NAME);
	if (pf_dev == NULL)
		return (ENOMEM);

	pf_end_threads = 0;
	error = FUNC0(pf_purge_thread, NULL, &pf_purge_proc, 0, 0, "pf purge");
	if (error != 0)
		return (error);

	FUNC3();

	return (0);
}