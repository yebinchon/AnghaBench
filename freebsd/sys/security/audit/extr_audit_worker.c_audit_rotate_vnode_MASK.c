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
struct vattr {scalar_t__ va_size; } ;
struct ucred {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_CLOSE_FLAGS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int LK_RETRY ; 
 int LK_SHARED ; 
 scalar_t__ FUNC3 (struct vnode*,struct vattr*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*,int /*<<< orphan*/ ) ; 
 struct ucred* audit_cred ; 
 scalar_t__ audit_file_rotate_wait ; 
 scalar_t__ audit_size ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  audit_trail_enabled ; 
 struct vnode* audit_vp ; 
 int /*<<< orphan*/  FUNC6 (struct ucred*) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*,int /*<<< orphan*/ ,struct ucred*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*,int) ; 

void
FUNC9(struct ucred *cred, struct vnode *vp)
{
	struct ucred *old_audit_cred;
	struct vnode *old_audit_vp;
	struct vattr vattr;

	FUNC2((cred != NULL && vp != NULL) || (cred == NULL && vp == NULL),
	    ("audit_rotate_vnode: cred %p vp %p", cred, vp));

	if (vp != NULL) {
		FUNC8(vp, LK_SHARED | LK_RETRY);
		if (FUNC3(vp, &vattr, cred) != 0)
			vattr.va_size = 0;
		FUNC4(vp, 0);
	} else {
		vattr.va_size = 0;
	}

	/*
	 * Rotate the vnode/cred, and clear the rotate flag so that we will
	 * send a rotate trigger if the new file fills.
	 */
	FUNC0();
	old_audit_cred = audit_cred;
	old_audit_vp = audit_vp;
	audit_cred = cred;
	audit_vp = vp;
	audit_size = vattr.va_size;
	audit_file_rotate_wait = 0;
	audit_trail_enabled = (audit_vp != NULL);
	FUNC5();
	FUNC1();

	/*
	 * If there was an old vnode/credential, close and free.
	 */
	if (old_audit_vp != NULL) {
		FUNC7(old_audit_vp, AUDIT_CLOSE_FLAGS, old_audit_cred,
		    curthread);
		FUNC6(old_audit_cred);
	}
}