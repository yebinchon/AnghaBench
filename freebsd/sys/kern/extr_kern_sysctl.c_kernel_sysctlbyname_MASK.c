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

/* Variables and functions */
 int CTL_MAXNAME ; 
 int CTL_SYSCTL ; 
 int CTL_SYSCTL_NAME2OID ; 
 int FUNC0 (struct thread*,int*,size_t,void*,size_t*,void*,size_t,size_t*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

int
FUNC2(struct thread *td, char *name, void *old, size_t *oldlenp,
    void *new, size_t newlen, size_t *retval, int flags)
{
        int oid[CTL_MAXNAME];
        size_t oidlen, plen;
	int error;

	oid[0] = CTL_SYSCTL;
	oid[1] = CTL_SYSCTL_NAME2OID;
	oidlen = sizeof(oid);

	error = FUNC0(td, oid, 2, oid, &oidlen,
	    (void *)name, FUNC1(name), &plen, flags);
	if (error)
		return (error);

	error = FUNC0(td, oid, plen / sizeof(int), old, oldlenp,
	    new, newlen, retval, flags);
	return (error);
}