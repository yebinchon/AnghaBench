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
struct vnode {int /*<<< orphan*/ * v_object; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;

/* Variables and functions */
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int /*<<< orphan*/  MNT_WAIT ; 
 int PCATCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct vnode*,int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,int /*<<< orphan*/ ) ; 
 int V_WAIT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mount*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*,int) ; 
 int FUNC7 (struct vnode*,struct mount**,int) ; 

__attribute__((used)) static int
FUNC8(struct thread *td, struct vnode *vp)
{
	struct mount *mp;
	int error;

	if ((error = FUNC7(vp, &mp, V_WAIT | PCATCH)) != 0)
		goto drop;
	FUNC6(vp, LK_EXCLUSIVE | LK_RETRY);
	if (vp->v_object != NULL) {
		FUNC0(vp->v_object);
		FUNC4(vp->v_object, 0, 0, 0);
		FUNC1(vp->v_object);
	}
	error = FUNC2(vp, MNT_WAIT, td);

	FUNC3(vp, 0);
	FUNC5(mp);
drop:
	return (error);
}