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
struct thread {int dummy; } ;
struct mount {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int EOPNOTSUPP ; 
 int IO_NODELOCKED ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int FUNC1 (struct vnode*,int,char const*,int /*<<< orphan*/ *,struct thread*) ; 
 int FUNC2 (struct vnode*,int,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_WAIT ; 
 int /*<<< orphan*/  FUNC4 (struct mount*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*,int) ; 
 int FUNC6 (struct vnode*,struct mount**,int /*<<< orphan*/ ) ; 

int
FUNC7(struct vnode *vp, int ioflg, int attrnamespace,
    const char *attrname, struct thread *td)
{
	struct mount	*mp;
	int	error;

	if ((ioflg & IO_NODELOCKED) == 0) {
		if ((error = FUNC6(vp, &mp, V_WAIT)) != 0)
			return (error);
		FUNC5(vp, LK_EXCLUSIVE | LK_RETRY);
	}

	FUNC0(vp, "IO_NODELOCKED with no vp lock held");

	/* authorize attribute removal as kernel */
	error = FUNC1(vp, attrnamespace, attrname, NULL, td);
	if (error == EOPNOTSUPP)
		error = FUNC2(vp, attrnamespace, attrname, NULL,
		    NULL, td);

	if ((ioflg & IO_NODELOCKED) == 0) {
		FUNC4(mp);
		FUNC3(vp, 0);
	}

	return (error);
}