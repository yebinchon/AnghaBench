#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vnode {int dummy; } ;
struct uio {int uio_iovcnt; int uio_resid; int /*<<< orphan*/  uio_offset; int /*<<< orphan*/  uio_segflg; int /*<<< orphan*/  uio_rw; struct iovec* uio_iov; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct nfsheur {int nh_seqcount; int /*<<< orphan*/  nh_nextoff; } ;
struct mbuf {int m_len; struct mbuf* m_next; } ;
struct iovec {char* iov_base; int iov_len; } ;
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_2__ {int* srvbytes; } ;

/* Variables and functions */
 int ENOENT ; 
 int IO_NODELOCKED ; 
 int IO_SEQSHIFT ; 
 int IO_SYNC ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NFSPROC_WRITEDS ; 
 int /*<<< orphan*/  FUNC1 (struct uio*,struct thread*) ; 
 size_t NFSV4OP_WRITE ; 
 int NFSWRITE_FILESYNC ; 
 int NFSWRITE_UNSTABLE ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  UIO_WRITE ; 
 int FUNC2 (struct vnode*,struct uio*,int,struct ucred*) ; 
 int /*<<< orphan*/  caddr_t ; 
 int /*<<< orphan*/  FUNC3 (struct iovec*,int /*<<< orphan*/ ) ; 
 struct iovec* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int) ; 
 char* FUNC6 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct vnode*,int /*<<< orphan*/ ,int,struct ucred*,struct thread*,int /*<<< orphan*/ ,struct mbuf**,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct nfsheur* FUNC8 (struct uio*,struct vnode*) ; 
 TYPE_1__ nfsstatsv1 ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

int
FUNC10(struct vnode *vp, off_t off, int retlen, int cnt, int *stable,
    struct mbuf *mp, char *cp, struct ucred *cred, struct thread *p)
{
	struct iovec *ivp;
	int i, len;
	struct iovec *iv;
	int ioflags, error;
	struct uio io, *uiop = &io;
	struct nfsheur *nh;

	/*
	 * Attempt to write to a DS file. A return of ENOENT implies
	 * there is no DS file to write.
	 */
	error = FUNC7(vp, off, retlen, cred, p, NFSPROC_WRITEDS,
	    &mp, cp, NULL, NULL, NULL);
	if (error != ENOENT) {
		*stable = NFSWRITE_FILESYNC;
		return (error);
	}

	ivp = FUNC4(cnt * sizeof (struct iovec), M_TEMP,
	    M_WAITOK);
	uiop->uio_iov = iv = ivp;
	uiop->uio_iovcnt = cnt;
	i = FUNC6(mp, caddr_t) + mp->m_len - cp;
	len = retlen;
	while (len > 0) {
		if (mp == NULL)
			FUNC9("nfsvno_write");
		if (i > 0) {
			i = FUNC5(i, len);
			ivp->iov_base = cp;
			ivp->iov_len = i;
			ivp++;
			len -= i;
		}
		mp = mp->m_next;
		if (mp) {
			i = mp->m_len;
			cp = FUNC6(mp, caddr_t);
		}
	}

	if (*stable == NFSWRITE_UNSTABLE)
		ioflags = IO_NODELOCKED;
	else
		ioflags = (IO_SYNC | IO_NODELOCKED);
	uiop->uio_resid = retlen;
	uiop->uio_rw = UIO_WRITE;
	uiop->uio_segflg = UIO_SYSSPACE;
	FUNC1(uiop, p);
	uiop->uio_offset = off;
	nh = FUNC8(uiop, vp);
	ioflags |= nh->nh_seqcount << IO_SEQSHIFT;
	/* XXX KDM make this more systematic? */
	nfsstatsv1.srvbytes[NFSV4OP_WRITE] += uiop->uio_resid;
	error = FUNC2(vp, uiop, ioflags, cred);
	if (error == 0)
		nh->nh_nextoff = uiop->uio_offset;
	FUNC3(iv, M_TEMP);

	FUNC0(error);
	return (error);
}