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
struct g_consumer {int dummy; } ;
struct diocskerneldump_arg {int /*<<< orphan*/  kda_index; } ;
struct cdev {scalar_t__ si_drv2; } ;
typedef  int /*<<< orphan*/  kda ;

/* Variables and functions */
 int /*<<< orphan*/  KDA_APPEND ; 
 int /*<<< orphan*/  FUNC0 (struct diocskerneldump_arg*,int) ; 
 char* FUNC1 (struct cdev*) ; 
 int /*<<< orphan*/ * dumpdev ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct g_consumer*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct cdev*,struct diocskerneldump_arg*) ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 size_t FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char const*,size_t) ; 

__attribute__((used)) static int
FUNC8(struct cdev *dev)
{
	struct diocskerneldump_arg kda;
	struct g_consumer *cp;
	const char *devprefix = "/dev/", *devname;
	int error;
	size_t len;

	FUNC0(&kda, sizeof(kda));
	kda.kda_index = KDA_APPEND;

	if (dumpdev == NULL)
		return (0);

	len = FUNC6(devprefix);
	devname = FUNC1(dev);
	if (FUNC5(devname, dumpdev) != 0 &&
	   (FUNC7(dumpdev, devprefix, len) != 0 ||
	    FUNC5(devname, dumpdev + len) != 0))
		return (0);

	cp = (struct g_consumer *)dev->si_drv2;
	error = FUNC3(cp, 1, 0, 0);
	if (error != 0)
		return (error);

	error = FUNC4(dev, &kda);
	if (error == 0) {
		FUNC2(dumpdev);
		dumpdev = NULL;
	}

	(void)FUNC3(cp, -1, 0, 0);

	return (error);
}