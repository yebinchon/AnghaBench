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
struct cdev {char const* si_name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENAMETOOLONG ; 
 int ENOMEM ; 
 int MAKEDEV_NOWAIT ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_WAITOK ; 
 int SPECNAMELEN ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC0 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,struct cdev**,struct cdev*,char*,char*) ; 
 char* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char const*,char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char*,char const*,int) ; 

int
FUNC9(int flags, struct cdev **cdev, struct cdev *pdev, 
    struct cdev *old_alias, const char *physpath)
{
	char *devfspath;
	int physpath_len;
	int max_parentpath_len;
	int parentpath_len;
	int devfspathbuf_len;
	int mflags;
	int ret;

	*cdev = NULL;
	devfspath = NULL;
	physpath_len = FUNC7(physpath);
	ret = EINVAL;
	if (physpath_len == 0)
		goto out;

	if (FUNC8("id1,", physpath, 4) == 0) {
		physpath += 4;
		physpath_len -= 4;
		if (physpath_len == 0)
			goto out;
	}

	max_parentpath_len = SPECNAMELEN - physpath_len - /*/*/1;
	parentpath_len = FUNC7(pdev->si_name);
	if (max_parentpath_len < parentpath_len) {
		if (bootverbose)
			FUNC4("WARNING: Unable to alias %s "
			    "to %s/%s - path too long\n",
			    pdev->si_name, physpath, pdev->si_name);
		ret = ENAMETOOLONG;
		goto out;
	}

	mflags = (flags & MAKEDEV_NOWAIT) ? M_NOWAIT : M_WAITOK;
	devfspathbuf_len = physpath_len + /*/*/1 + parentpath_len + /*NUL*/1;
	devfspath = FUNC3(devfspathbuf_len, M_DEVBUF, mflags);
	if (devfspath == NULL) {
		ret = ENOMEM;
		goto out;
	}

	FUNC5(devfspath, "%s/%s", physpath, pdev->si_name);
	if (old_alias != NULL && FUNC6(old_alias->si_name, devfspath) == 0) {
		/* Retain the existing alias. */
		*cdev = old_alias;
		old_alias = NULL;
		ret = 0;
	} else {
		ret = FUNC2(flags, cdev, pdev, "%s", devfspath);
	}
out:
	if (old_alias != NULL)	
		FUNC0(old_alias);
	if (devfspath != NULL)
		FUNC1(devfspath, M_DEVBUF);
	return (ret);
}