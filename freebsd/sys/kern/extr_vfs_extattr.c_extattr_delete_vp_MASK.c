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

/* Variables and functions */
 int EOPNOTSUPP ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int PCATCH ; 
 int FUNC0 (struct vnode*,int,char const*,int /*<<< orphan*/ ,struct thread*) ; 
 int FUNC1 (struct vnode*,int,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*,int /*<<< orphan*/ ) ; 
 int V_WAIT ; 
 int FUNC3 (int /*<<< orphan*/ ,struct vnode*,int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct mount*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*,int) ; 
 int FUNC6 (struct vnode*,struct mount**,int) ; 

__attribute__((used)) static int
FUNC7(struct vnode *vp, int attrnamespace, const char *attrname,
    struct thread *td)
{
	struct mount *mp;
	int error;

	error = FUNC6(vp, &mp, V_WAIT | PCATCH);
	if (error)
		return (error);
	FUNC5(vp, LK_EXCLUSIVE | LK_RETRY);

#ifdef MAC
	error = mac_vnode_check_deleteextattr(td->td_ucred, vp, attrnamespace,
	    attrname);
	if (error)
		goto done;
#endif

	error = FUNC0(vp, attrnamespace, attrname, td->td_ucred,
	    td);
	if (error == EOPNOTSUPP)
		error = FUNC1(vp, attrnamespace, attrname, NULL,
		    td->td_ucred, td);
#ifdef MAC
done:
#endif
	FUNC2(vp, 0);
	FUNC4(mp);
	return (error);
}