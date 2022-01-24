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
struct xfile {int dummy; } ;

/* Variables and functions */
 int CTL_KERN ; 
 int KERN_FILE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/ * kd ; 
 struct xfile* FUNC1 (size_t) ; 
 int FUNC2 (int*,int,struct xfile*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(struct xfile **abuf, size_t *alen)
{
	struct xfile *buf;
	size_t len;
	int mib[2];

	/*
	 * XXX
	 * Add emulation of KINFO_FILE here.
	 */
	if (kd != NULL)
		FUNC0(1, "files on dead kernel, not implemented");

	mib[0] = CTL_KERN;
	mib[1] = KERN_FILE;
	if (FUNC2(mib, 2, NULL, &len, NULL, 0) == -1) {
		FUNC3("sysctl: KERN_FILE");
		return (-1);
	}
	if ((buf = FUNC1(len)) == NULL)
		FUNC0(1, "malloc");
	if (FUNC2(mib, 2, buf, &len, NULL, 0) == -1) {
		FUNC3("sysctl: KERN_FILE");
		return (-1);
	}
	*abuf = buf;
	*alen = len;
	return (0);
}