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
struct uio {int uio_iovcnt; int /*<<< orphan*/  uio_resid; int /*<<< orphan*/  uio_segflg; int /*<<< orphan*/  uio_rw; scalar_t__ uio_offset; struct iovec* uio_iov; } ;
struct ucred {int dummy; } ;
struct md_s {scalar_t__ vnode; scalar_t__ cred; int /*<<< orphan*/  sectorsize; } ;
struct iovec {char* iov_base; int /*<<< orphan*/  iov_len; } ;
typedef  int /*<<< orphan*/  auio ;

/* Variables and functions */
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  UIO_READ ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int FUNC0 (scalar_t__,struct uio*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uio*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (struct ucred*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int) ; 

__attribute__((used)) static int
FUNC8(struct md_s *sc, struct ucred *cred)
{
	char *tmpbuf;
	int error = 0;

	/*
	 * Set credits in our softc
	 */

	if (sc->cred)
		FUNC3(sc->cred);
	sc->cred = FUNC4(cred);

	/*
	 * Horrible kludge to establish credentials for NFS  XXX.
	 */

	if (sc->vnode) {
		struct uio auio;
		struct iovec aiov;

		tmpbuf = FUNC6(sc->sectorsize, M_TEMP, M_WAITOK);
		FUNC2(&auio, sizeof(auio));

		aiov.iov_base = tmpbuf;
		aiov.iov_len = sc->sectorsize;
		auio.uio_iov = &aiov;
		auio.uio_iovcnt = 1;
		auio.uio_offset = 0;
		auio.uio_rw = UIO_READ;
		auio.uio_segflg = UIO_SYSSPACE;
		auio.uio_resid = aiov.iov_len;
		FUNC7(sc->vnode, LK_EXCLUSIVE | LK_RETRY);
		error = FUNC0(sc->vnode, &auio, 0, sc->cred);
		FUNC1(sc->vnode, 0);
		FUNC5(tmpbuf, M_TEMP);
	}
	return (error);
}