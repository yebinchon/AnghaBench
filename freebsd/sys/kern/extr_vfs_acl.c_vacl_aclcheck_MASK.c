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
struct vnode {int dummy; } ;
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct acl {int dummy; } ;
typedef  int /*<<< orphan*/  acl_type_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_WAITOK ; 
 int FUNC0 (struct vnode*,int /*<<< orphan*/ ,struct acl*,int /*<<< orphan*/ ,struct thread*) ; 
 struct acl* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct acl const*,struct acl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct acl*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct thread *td, struct vnode *vp, acl_type_t type,
    const struct acl *aclp)
{
	struct acl *inkernelacl;
	int error;

	inkernelacl = FUNC1(M_WAITOK);
	error = FUNC2(aclp, inkernelacl, type);
	if (error != 0)
		goto out;
	error = FUNC0(vp, FUNC4(type), inkernelacl,
	    td->td_ucred, td);
out:
	FUNC3(inkernelacl);
	return (error);
}