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
typedef  int /*<<< orphan*/  acl_type_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int PCATCH ; 
 int FUNC2 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,int /*<<< orphan*/ ) ; 
 int V_WAIT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mount*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*,int) ; 
 int FUNC8 (struct vnode*,struct mount**,int) ; 

__attribute__((used)) static int
FUNC9(struct thread *td, struct vnode *vp, acl_type_t type)
{
	struct mount *mp;
	int error;

	FUNC0(type);
	error = FUNC8(vp, &mp, V_WAIT | PCATCH);
	if (error != 0)
		return (error);
	FUNC7(vp, LK_EXCLUSIVE | LK_RETRY);
	FUNC1(vp);
#ifdef MAC
	error = mac_vnode_check_deleteacl(td->td_ucred, vp, type);
	if (error != 0)
		goto out;
#endif
	error = FUNC2(vp, FUNC4(type), 0, td->td_ucred, td);
#ifdef MAC
out:
#endif
	FUNC3(vp, 0);
	FUNC6(mp);
	return (error);
}