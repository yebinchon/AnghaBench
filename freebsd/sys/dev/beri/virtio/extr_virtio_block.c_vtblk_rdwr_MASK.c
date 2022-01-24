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
struct uio {int uio_iovcnt; int uio_offset; int uio_rw; int uio_resid; int /*<<< orphan*/  uio_td; int /*<<< orphan*/  uio_segflg; struct iovec* uio_iov; } ;
struct mount {int dummy; } ;
struct iovec {int dummy; } ;
struct beri_vtblk_softc {int /*<<< orphan*/  cred; struct vnode* vnode; } ;
typedef  int /*<<< orphan*/  auio ;

/* Variables and functions */
 int /*<<< orphan*/  IO_DIRECT ; 
 int /*<<< orphan*/  IO_SYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int FUNC1 (struct vnode*,struct uio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vnode*,struct uio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_WAIT ; 
 int /*<<< orphan*/  FUNC4 (struct uio*,int) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC5 (struct mount*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*,struct mount**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct beri_vtblk_softc *sc, struct iovec *iov,
	int cnt, int offset, int operation, int iolen)
{
	struct vnode *vp;
	struct mount *mp;
	struct uio auio;
	int error;

	FUNC4(&auio, sizeof(auio));

	vp = sc->vnode;

	FUNC0(vp != NULL, ("file not opened"));

	auio.uio_iov = iov;
	auio.uio_iovcnt = cnt;
	auio.uio_offset = offset;
	auio.uio_segflg = UIO_SYSSPACE;
	auio.uio_rw = operation;
	auio.uio_resid = iolen;
	auio.uio_td = curthread;

	if (operation == 0) {
		FUNC6(vp, LK_EXCLUSIVE | LK_RETRY);
		error = FUNC1(vp, &auio, IO_DIRECT, sc->cred);
		FUNC2(vp, 0);
	} else {
		(void) FUNC7(vp, &mp, V_WAIT);
		FUNC6(vp, LK_EXCLUSIVE | LK_RETRY);
		error = FUNC3(vp, &auio, IO_SYNC, sc->cred);
		FUNC2(vp, 0);
		FUNC5(mp);
	}

	return (error);
}