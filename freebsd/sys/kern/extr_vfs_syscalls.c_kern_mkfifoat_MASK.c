#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vattr {int va_mode; int /*<<< orphan*/  va_type; } ;
struct thread {int /*<<< orphan*/  td_ucred; TYPE_2__* td_proc; } ;
struct nameidata {int /*<<< orphan*/ * ni_dvp; int /*<<< orphan*/ * ni_vp; int /*<<< orphan*/  ni_cnd; } ;
struct mount {int dummy; } ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
struct TYPE_4__ {TYPE_1__* p_fd; } ;
struct TYPE_3__ {int fd_cmask; } ;

/* Variables and functions */
 int ALLPERMS ; 
 int AUDITVNODE1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CREATE ; 
 int EEXIST ; 
 int LOCKPARENT ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC2 (struct nameidata*,int /*<<< orphan*/ ,int,int,char const*,int,int /*<<< orphan*/ *,struct thread*) ; 
 int NOCACHE ; 
 int PCATCH ; 
 int SAVENAME ; 
 int /*<<< orphan*/  FUNC3 (struct vattr*) ; 
 int /*<<< orphan*/  VFIFO ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,struct vattr*) ; 
 int V_NOWAIT ; 
 int V_XSLEEP ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  cap_mkfifoat_rights ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct vattr*) ; 
 int FUNC7 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC8 (struct mount*) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct mount**,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int
FUNC12(struct thread *td, int fd, const char *path,
    enum uio_seg pathseg, int mode)
{
	struct mount *mp;
	struct vattr vattr;
	struct nameidata nd;
	int error;

	FUNC0(mode);
restart:
	FUNC5();
	FUNC2(&nd, CREATE, LOCKPARENT | SAVENAME | AUDITVNODE1 |
	    NOCACHE, pathseg, path, fd, &cap_mkfifoat_rights,
	    td);
	if ((error = FUNC7(&nd)) != 0)
		return (error);
	if (nd.ni_vp != NULL) {
		FUNC1(&nd, NDF_ONLY_PNBUF);
		if (nd.ni_vp == nd.ni_dvp)
			FUNC11(nd.ni_dvp);
		else
			FUNC10(nd.ni_dvp);
		FUNC11(nd.ni_vp);
		return (EEXIST);
	}
	if (FUNC9(nd.ni_dvp, &mp, V_NOWAIT) != 0) {
		FUNC1(&nd, NDF_ONLY_PNBUF);
		FUNC10(nd.ni_dvp);
		if ((error = FUNC9(NULL, &mp, V_XSLEEP | PCATCH)) != 0)
			return (error);
		goto restart;
	}
	FUNC3(&vattr);
	vattr.va_type = VFIFO;
	vattr.va_mode = (mode & ALLPERMS) & ~td->td_proc->p_fd->fd_cmask;
#ifdef MAC
	error = mac_vnode_check_create(td->td_ucred, nd.ni_dvp, &nd.ni_cnd,
	    &vattr);
	if (error != 0)
		goto out;
#endif
	error = FUNC4(nd.ni_dvp, &nd.ni_vp, &nd.ni_cnd, &vattr);
	if (error == 0)
		FUNC10(nd.ni_vp);
#ifdef MAC
out:
#endif
	FUNC10(nd.ni_dvp);
	FUNC8(mp);
	FUNC1(&nd, NDF_ONLY_PNBUF);
	return (error);
}