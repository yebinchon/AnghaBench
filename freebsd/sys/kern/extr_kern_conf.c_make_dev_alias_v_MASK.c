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
typedef  int /*<<< orphan*/  va_list ;
struct cdev {int /*<<< orphan*/  si_flags; int /*<<< orphan*/  si_name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MAKEDEV_CHECKNAME ; 
 int MAKEDEV_NOWAIT ; 
 int MAKEDEV_WAITOK ; 
 int /*<<< orphan*/  SI_ALIAS ; 
 int /*<<< orphan*/  SI_NAMED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cdev*,struct cdev*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct cdev* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC7 (struct cdev*) ; 
 int /*<<< orphan*/  devfs_inos ; 
 int /*<<< orphan*/  FUNC8 (struct cdev*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct cdev*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(int flags, struct cdev **cdev, struct cdev *pdev,
    const char *fmt, va_list ap)
{
	struct cdev *dev;
	int error;

	FUNC0(pdev != NULL, ("make_dev_alias_v: pdev is NULL"));
	FUNC0((flags & MAKEDEV_WAITOK) == 0 || (flags & MAKEDEV_NOWAIT) == 0,
	    ("make_dev_alias_v: both WAITOK and NOWAIT specified"));
	FUNC0((flags & ~(MAKEDEV_WAITOK | MAKEDEV_NOWAIT |
	    MAKEDEV_CHECKNAME)) == 0,
	    ("make_dev_alias_v: invalid flags specified (flags=%02x)", flags));

	dev = FUNC5(flags);
	if (dev == NULL)
		return (ENOMEM);
	FUNC3();
	dev->si_flags |= SI_ALIAS;
	error = FUNC10(dev, fmt, ap);
	if (error != 0) {
		if ((flags & MAKEDEV_CHECKNAME) == 0) {
			FUNC9("make_dev_alias_v: bad si_name "
			    "(error=%d, si_name=%s)", error, dev->si_name);
		}
		FUNC4();
		FUNC7(dev);
		return (error);
	}
	dev->si_flags |= SI_NAMED;
	FUNC6(dev);
	FUNC2(pdev, dev);
	FUNC1(devfs_inos);
	FUNC4();

	FUNC8(dev, flags);
	*cdev = dev;

	return (0);
}