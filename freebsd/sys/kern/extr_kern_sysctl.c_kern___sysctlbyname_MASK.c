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
struct thread {int dummy; } ;
typedef  int /*<<< orphan*/  oid ;
typedef  int /*<<< orphan*/  namebuf ;

/* Variables and functions */
 int CTL_MAXNAME ; 
 int CTL_SYSCTL ; 
 int CTL_SYSCTL_NAME2OID ; 
 int EINVAL ; 
 size_t MAXPATHLEN ; 
 int /*<<< orphan*/  M_SYSCTL ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int FUNC0 (char const*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct thread*,int*,int,int*,size_t*,void*,size_t,size_t*,int) ; 
 char* FUNC3 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct thread*,int*,size_t,void*,size_t*,int,void*,size_t,size_t*,int) ; 

int
FUNC5(struct thread *td, const char *oname, size_t namelen,
    void *old, size_t *oldlenp, void *new, size_t newlen, size_t *retval,
    int flags, bool inkernel)
{
	int oid[CTL_MAXNAME];
	char namebuf[16];
	char *name;
	size_t oidlen;
	int error;

	if (namelen > MAXPATHLEN || namelen == 0)
		return (EINVAL);
	name = namebuf;
	if (namelen > sizeof(namebuf))
		name = FUNC3(namelen, M_SYSCTL, M_WAITOK);
	error = FUNC0(oname, name, namelen);
	if (error != 0)
		goto out;

	oid[0] = CTL_SYSCTL;
	oid[1] = CTL_SYSCTL_NAME2OID;
	oidlen = sizeof(oid);
	error = FUNC2(td, oid, 2, oid, &oidlen, (void *)name, namelen,
	    retval, flags);
	if (error != 0)
		goto out;
	error = FUNC4(td, oid, *retval / sizeof(int), old, oldlenp,
	    inkernel, new, newlen, retval, flags);

out:
	if (namelen > sizeof(namebuf))
		FUNC1(name, M_SYSCTL);
	return (error);
}