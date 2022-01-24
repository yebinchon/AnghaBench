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
typedef  int /*<<< orphan*/  mddev ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  MDCTL_NAME ; 
 int /*<<< orphan*/  O_RDWR ; 
 char* _PATH_DEV ; 
 int md_fd ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 

int
FUNC5(void)
{
	char mddev[32] = "";

	/* Try to load md.ko if not loaded already */
	FUNC0();

	md_fd = -1;
	FUNC3(mddev, sizeof(mddev) - 1, "%s%s", _PATH_DEV, MDCTL_NAME);
	if ((md_fd = FUNC1(mddev, O_RDWR)) == -1) {
		FUNC4(LOG_ERR, "open %s failed - will not include md(4) "
		    "info: %m", mddev);
	}

	FUNC2(1);

	return (0);
}