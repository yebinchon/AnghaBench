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
struct uio {int uio_iovcnt; int uio_resid; int /*<<< orphan*/  uio_offset; int /*<<< orphan*/ * uio_td; int /*<<< orphan*/  uio_segflg; int /*<<< orphan*/  uio_rw; struct iovec* uio_iov; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct nfsheur {int nh_seqcount; int /*<<< orphan*/  nh_nextoff; } ;
struct mbuf {struct mbuf* m_next; scalar_t__ m_len; } ;
struct iovec {int iov_len; scalar_t__ iov_base; } ;
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_2__ {int* srvbytes; } ;

/* Variables and functions */
 int ENOENT ; 
 int IO_NODELOCKED ; 
 int IO_SEQSHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  NFSPROC_READDS ; 
 size_t NFSV4OP_READ ; 
 int /*<<< orphan*/  UIO_READ ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int FUNC5 (struct vnode*,struct uio*,int,struct ucred*) ; 
 int /*<<< orphan*/  caddr_t ; 
 int /*<<< orphan*/  FUNC6 (struct iovec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*) ; 
 struct iovec* FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mbuf*,int,int) ; 
 int FUNC12 (struct vnode*,int /*<<< orphan*/ ,int,struct ucred*,struct thread*,int /*<<< orphan*/ ,struct mbuf**,int /*<<< orphan*/ *,struct mbuf**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct nfsheur* FUNC13 (struct uio*,struct vnode*) ; 
 TYPE_1__ nfsstatsv1 ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

int
FUNC15(struct vnode *vp, off_t off, int cnt, struct ucred *cred,
    struct thread *p, struct mbuf **mpp, struct mbuf **mpendp)
{
	struct mbuf *m;
	int i;
	struct iovec *iv;
	struct iovec *iv2;
	int error = 0, len, left, siz, tlen, ioflag = 0;
	struct mbuf *m2 = NULL, *m3;
	struct uio io, *uiop = &io;
	struct nfsheur *nh;

	/*
	 * Attempt to read from a DS file. A return of ENOENT implies
	 * there is no DS file to read.
	 */
	error = FUNC12(vp, off, cnt, cred, p, NFSPROC_READDS, mpp,
	    NULL, mpendp, NULL, NULL);
	if (error != ENOENT)
		return (error);

	len = left = FUNC4(cnt);
	m3 = NULL;
	/*
	 * Generate the mbuf list with the uio_iov ref. to it.
	 */
	i = 0;
	while (left > 0) {
		FUNC3(m);
		FUNC0(m, M_WAITOK);
		m->m_len = 0;
		siz = FUNC9(FUNC1(m), left);
		left -= siz;
		i++;
		if (m3)
			m2->m_next = m;
		else
			m3 = m;
		m2 = m;
	}
	iv = FUNC8(i * sizeof (struct iovec),
	    M_TEMP, M_WAITOK);
	uiop->uio_iov = iv2 = iv;
	m = m3;
	left = len;
	i = 0;
	while (left > 0) {
		if (m == NULL)
			FUNC14("nfsvno_read iov");
		siz = FUNC9(FUNC1(m), left);
		if (siz > 0) {
			iv->iov_base = FUNC10(m, caddr_t) + m->m_len;
			iv->iov_len = siz;
			m->m_len += siz;
			left -= siz;
			iv++;
			i++;
		}
		m = m->m_next;
	}
	uiop->uio_iovcnt = i;
	uiop->uio_offset = off;
	uiop->uio_resid = len;
	uiop->uio_rw = UIO_READ;
	uiop->uio_segflg = UIO_SYSSPACE;
	uiop->uio_td = NULL;
	nh = FUNC13(uiop, vp);
	ioflag |= nh->nh_seqcount << IO_SEQSHIFT;
	/* XXX KDM make this more systematic? */
	nfsstatsv1.srvbytes[NFSV4OP_READ] += uiop->uio_resid;
	error = FUNC5(vp, uiop, IO_NODELOCKED | ioflag, cred);
	FUNC6(iv2, M_TEMP);
	if (error) {
		FUNC7(m3);
		*mpp = NULL;
		goto out;
	}
	nh->nh_nextoff = uiop->uio_offset;
	tlen = len - uiop->uio_resid;
	cnt = cnt < tlen ? cnt : tlen;
	tlen = FUNC4(cnt);
	if (tlen == 0) {
		FUNC7(m3);
		m3 = NULL;
	} else if (len != tlen || tlen != cnt)
		FUNC11(m3, len - tlen, tlen - cnt);
	*mpp = m3;
	*mpendp = m2;

out:
	FUNC2(error);
	return (error);
}