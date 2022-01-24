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
struct nameidata {scalar_t__ ni_vp; scalar_t__ ni_dvp; int /*<<< orphan*/  ni_cnd; } ;
struct mount {int dummy; } ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
struct TYPE_4__ {TYPE_1__* p_fd; } ;
struct TYPE_3__ {int fd_cmask; } ;

/* Variables and functions */
 int ACCESSPERMS ; 
 int AUDITVNODE1 ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  CREATE ; 
 int EEXIST ; 
 int LOCKPARENT ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC2 (struct nameidata*,int /*<<< orphan*/ ,int,int,char const*,int,int /*<<< orphan*/ *,struct thread*) ; 
 int NOCACHE ; 
 int PCATCH ; 
 int SAVENAME ; 
 int UIO_SYSSPACE ; 
 int /*<<< orphan*/  FUNC3 (struct vattr*) ; 
 int /*<<< orphan*/  VLNK ; 
 int FUNC4 (scalar_t__,scalar_t__*,int /*<<< orphan*/ *,struct vattr*,char const*) ; 
 int V_NOWAIT ; 
 int V_XSLEEP ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  cap_symlinkat_rights ; 
 int FUNC6 (char const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,struct vattr*) ; 
 int FUNC8 (struct nameidata*) ; 
 int /*<<< orphan*/  namei_zone ; 
 char* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct mount*) ; 
 int FUNC12 (int /*<<< orphan*/ *,struct mount**,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 

int
FUNC15(struct thread *td, const char *path1, int fd, const char *path2,
    enum uio_seg segflg)
{
	struct mount *mp;
	struct vattr vattr;
	const char *syspath;
	char *tmppath;
	struct nameidata nd;
	int error;

	if (segflg == UIO_SYSSPACE) {
		syspath = path1;
	} else {
		tmppath = FUNC9(namei_zone, M_WAITOK);
		if ((error = FUNC6(path1, tmppath, MAXPATHLEN, NULL)) != 0)
			goto out;
		syspath = tmppath;
	}
	FUNC0(syspath);
restart:
	FUNC5();
	FUNC2(&nd, CREATE, LOCKPARENT | SAVENAME | AUDITVNODE1 |
	    NOCACHE, segflg, path2, fd, &cap_symlinkat_rights,
	    td);
	if ((error = FUNC8(&nd)) != 0)
		goto out;
	if (nd.ni_vp) {
		FUNC1(&nd, NDF_ONLY_PNBUF);
		if (nd.ni_vp == nd.ni_dvp)
			FUNC14(nd.ni_dvp);
		else
			FUNC13(nd.ni_dvp);
		FUNC14(nd.ni_vp);
		error = EEXIST;
		goto out;
	}
	if (FUNC12(nd.ni_dvp, &mp, V_NOWAIT) != 0) {
		FUNC1(&nd, NDF_ONLY_PNBUF);
		FUNC13(nd.ni_dvp);
		if ((error = FUNC12(NULL, &mp, V_XSLEEP | PCATCH)) != 0)
			goto out;
		goto restart;
	}
	FUNC3(&vattr);
	vattr.va_mode = ACCESSPERMS &~ td->td_proc->p_fd->fd_cmask;
#ifdef MAC
	vattr.va_type = VLNK;
	error = mac_vnode_check_create(td->td_ucred, nd.ni_dvp, &nd.ni_cnd,
	    &vattr);
	if (error != 0)
		goto out2;
#endif
	error = FUNC4(nd.ni_dvp, &nd.ni_vp, &nd.ni_cnd, &vattr, syspath);
	if (error == 0)
		FUNC13(nd.ni_vp);
#ifdef MAC
out2:
#endif
	FUNC1(&nd, NDF_ONLY_PNBUF);
	FUNC13(nd.ni_dvp);
	FUNC11(mp);
out:
	if (segflg != UIO_SYSSPACE)
		FUNC10(namei_zone, tmppath);
	return (error);
}