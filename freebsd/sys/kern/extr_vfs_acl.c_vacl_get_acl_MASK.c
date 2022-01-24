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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int FUNC2 (struct vnode*,int /*<<< orphan*/ ,struct acl*,int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,int /*<<< orphan*/ ) ; 
 struct acl* FUNC4 (int) ; 
 int FUNC5 (struct acl*,struct acl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct acl*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct vnode*,int) ; 

__attribute__((used)) static int
FUNC10(struct thread *td, struct vnode *vp, acl_type_t type,
    struct acl *aclp)
{
	struct acl *inkernelacl;
	int error;

	FUNC0(type);
	inkernelacl = FUNC4(M_WAITOK | M_ZERO);
	FUNC9(vp, LK_EXCLUSIVE | LK_RETRY);
	FUNC1(vp);
#ifdef MAC
	error = mac_vnode_check_getacl(td->td_ucred, vp, type);
	if (error != 0)
		goto out;
#endif
	error = FUNC2(vp, FUNC7(type), inkernelacl,
	    td->td_ucred, td);

#ifdef MAC
out:
#endif
	FUNC3(vp, 0);
	if (error == 0)
		error = FUNC5(inkernelacl, aclp, type);
	FUNC6(inkernelacl);
	return (error);
}