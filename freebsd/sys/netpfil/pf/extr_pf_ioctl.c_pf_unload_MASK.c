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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * pf_dev ; 
 int /*<<< orphan*/  pf_end_lock ; 
 int pf_end_threads ; 
 int /*<<< orphan*/  pf_ioctl_lock ; 
 int /*<<< orphan*/  pf_purge_proc ; 
 int /*<<< orphan*/  pf_purge_thread ; 
 int /*<<< orphan*/  pf_rules_lock ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(void)
{

	FUNC5(&pf_end_lock);
	pf_end_threads = 1;
	while (pf_end_threads < 2) {
		FUNC7(pf_purge_thread);
		FUNC4(pf_purge_proc, &pf_end_lock, 0, "pftmo", 0);
	}
	FUNC6(&pf_end_lock);

	if (pf_dev != NULL)
		FUNC0(pf_dev);

	FUNC1();

	FUNC2(&pf_rules_lock);
	FUNC3(&pf_ioctl_lock);
	FUNC3(&pf_end_lock);
}