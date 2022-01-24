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
struct mount {int dummy; } ;
struct acl {int dummy; } ;
typedef  int /*<<< orphan*/  acl_type_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int PCATCH ; 
 int FUNC2 (struct vnode*,int /*<<< orphan*/ ,struct acl*,int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,int /*<<< orphan*/ ) ; 
 int V_WAIT ; 
 struct acl* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct acl const*,struct acl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct acl*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct vnode*,int /*<<< orphan*/ ,struct acl*) ; 
 int /*<<< orphan*/  FUNC9 (struct mount*) ; 
 int /*<<< orphan*/  FUNC10 (struct vnode*,int) ; 
 int FUNC11 (struct vnode*,struct mount**,int) ; 

__attribute__((used)) static int
FUNC12(struct thread *td, struct vnode *vp, acl_type_t type,
    const struct acl *aclp)
{
	struct acl *inkernelacl;
	struct mount *mp;
	int error;

	FUNC0(type);
	inkernelacl = FUNC4(M_WAITOK);
	error = FUNC5(aclp, inkernelacl, type);
	if (error != 0)
		goto out;
	error = FUNC11(vp, &mp, V_WAIT | PCATCH);
	if (error != 0)
		goto out;
	FUNC10(vp, LK_EXCLUSIVE | LK_RETRY);
	FUNC1(vp);
#ifdef MAC
	error = mac_vnode_check_setacl(td->td_ucred, vp, type, inkernelacl);
	if (error != 0)
		goto out_unlock;
#endif
	error = FUNC2(vp, FUNC7(type), inkernelacl,
	    td->td_ucred, td);
#ifdef MAC
out_unlock:
#endif
	FUNC3(vp, 0);
	FUNC9(mp);
out:
	FUNC6(inkernelacl);
	return (error);
}