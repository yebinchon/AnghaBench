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
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct nameidata {int /*<<< orphan*/  ni_vp; } ;
struct chroot_args {int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int AUDITVNODE1 ; 
 int FOLLOW ; 
 int LOCKLEAF ; 
 int LOCKSHARED ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  PRIV_VFS_CHROOT ; 
 int /*<<< orphan*/  UIO_USERSPACE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct thread*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct nameidata*) ; 
 int FUNC6 (struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int
FUNC10(struct thread *td, struct chroot_args *uap)
{
	struct nameidata nd;
	int error;

	error = FUNC6(td, PRIV_VFS_CHROOT);
	if (error != 0)
		return (error);
	FUNC1(&nd, LOOKUP, FOLLOW | LOCKSHARED | LOCKLEAF | AUDITVNODE1,
	    UIO_USERSPACE, uap->path, td);
	error = FUNC5(&nd);
	if (error != 0)
		goto error;
	error = FUNC3(nd.ni_vp, td);
	if (error != 0)
		goto e_vunlock;
#ifdef MAC
	error = mac_vnode_check_chroot(td->td_ucred, nd.ni_vp);
	if (error != 0)
		goto e_vunlock;
#endif
	FUNC2(nd.ni_vp, 0);
	error = FUNC7(td, nd.ni_vp);
	FUNC9(nd.ni_vp);
	FUNC0(&nd, NDF_ONLY_PNBUF);
	return (error);
e_vunlock:
	FUNC8(nd.ni_vp);
error:
	FUNC0(&nd, NDF_ONLY_PNBUF);
	return (error);
}