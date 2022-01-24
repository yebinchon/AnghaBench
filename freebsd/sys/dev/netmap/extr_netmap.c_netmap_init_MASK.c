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
 int EINVAL ; 
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  MAKEDEV_ETERNAL_KLD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  netmap_cdevsw ; 
 int /*<<< orphan*/  netmap_dev ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

int
FUNC8(void)
{
	int error;

	FUNC0();

	error = FUNC4();
	if (error != 0)
		goto fail;
	/*
	 * MAKEDEV_ETERNAL_KLD avoids an expensive check on syscalls
	 * when the module is compiled in.
	 * XXX could use make_dev_credv() to get error number
	 */
	netmap_dev = FUNC1(MAKEDEV_ETERNAL_KLD,
		&netmap_cdevsw, 0, NULL, UID_ROOT, GID_WHEEL, 0600,
			      "netmap");
	if (!netmap_dev)
		goto fail;

	error = FUNC3();
	if (error)
		goto fail;

#ifdef __FreeBSD__
	nm_os_vi_init_index();
#endif

	error = FUNC5();
	if (error)
		goto fail;

	FUNC7("netmap: loaded module");
	return (0);
fail:
	FUNC2();
	return (EINVAL); /* may be incorrect */
}