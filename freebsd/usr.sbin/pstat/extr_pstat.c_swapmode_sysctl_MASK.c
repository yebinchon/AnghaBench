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
struct xswdev {scalar_t__ xsw_version; scalar_t__ xsw_dev; int /*<<< orphan*/  xsw_flags; int /*<<< orphan*/  xsw_nblks; int /*<<< orphan*/  xsw_used; } ;
struct kvm_swap {int /*<<< orphan*/  ksw_flags; int /*<<< orphan*/  ksw_total; int /*<<< orphan*/  ksw_used; int /*<<< orphan*/  ksw_devname; } ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 scalar_t__ NODEV ; 
 int /*<<< orphan*/  S_IFCHR ; 
 scalar_t__ XSWDEV_VERSION ; 
 char* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_swap*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*,...) ; 
 int FUNC7 (int*,size_t,struct xswdev*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*,int*,size_t*) ; 

__attribute__((used)) static void
FUNC9(void)
{
	struct kvm_swap ksw;
	struct xswdev xsw;
	size_t mibsize, size;
	int mib[16], n;

	FUNC4();
	mibsize = sizeof mib / sizeof mib[0];
	if (FUNC8("vm.swap_info", mib, &mibsize) == -1)
		FUNC1(1, "sysctlnametomib()");
	for (n = 0; ; ++n) {
		mib[mibsize] = n;
		size = sizeof xsw;
		if (FUNC7(mib, mibsize + 1, &xsw, &size, NULL, 0) == -1)
			break;
		if (xsw.xsw_version != XSWDEV_VERSION)
			FUNC2(1, "xswdev version mismatch");
		if (xsw.xsw_dev == NODEV)
			FUNC6(ksw.ksw_devname, sizeof ksw.ksw_devname,
			    "<NFSfile>");
		else
			FUNC6(ksw.ksw_devname, sizeof ksw.ksw_devname,
			    "/dev/%s", FUNC0(xsw.xsw_dev, S_IFCHR));
		ksw.ksw_used = xsw.xsw_used;
		ksw.ksw_total = xsw.xsw_nblks;
		ksw.ksw_flags = xsw.xsw_flags;
		FUNC3(&ksw);
	}
	if (errno != ENOENT)
		FUNC1(1, "sysctl()");
	FUNC5();
}