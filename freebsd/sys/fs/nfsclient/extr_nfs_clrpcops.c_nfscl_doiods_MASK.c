#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vnode_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct uio {scalar_t__ uio_offset; TYPE_2__* uio_iov; scalar_t__ uio_resid; } ;
struct ucred {int dummy; } ;
struct nfsnode {int n_flag; TYPE_3__* n_fhp; } ;
struct nfsmount {int /*<<< orphan*/  nm_state; int /*<<< orphan*/  nm_clp; } ;
struct nfsclwritedsdorpc {scalar_t__ inprog; scalar_t__ done; int err; int /*<<< orphan*/  tsk; } ;
struct nfscllayout {int nfsly_flags; scalar_t__ nfsly_lastbyte; } ;
struct nfsclflayout {scalar_t__ nfsfl_end; scalar_t__ nfsfl_off; int nfsfl_mirrorcnt; int nfsfl_flags; int /*<<< orphan*/  nfsfl_devp; int /*<<< orphan*/ * nfsfl_dev; TYPE_1__* nfsfl_ffm; } ;
struct nfscldevinfo {int dummy; } ;
struct mbuf {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  nfsv4stateid_t ;
struct TYPE_6__ {int /*<<< orphan*/  nfh_len; int /*<<< orphan*/  nfh_fh; } ;
struct TYPE_5__ {size_t iov_len; void* iov_base; } ;
struct TYPE_4__ {int /*<<< orphan*/  devp; int /*<<< orphan*/ * dev; } ;
typedef  int /*<<< orphan*/  NFSPROC_T ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  M_TEMP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int NFSERR_OPENMODE ; 
 int NFSFL_FLEXFILE ; 
 int /*<<< orphan*/  FUNC0 (struct ucred*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfsmount*) ; 
 int NFSLAYOUTIOMODE_READ ; 
 int NFSLAYOUTIOMODE_RW ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfsnode*) ; 
 int NFSLY_FLEXFILE ; 
 int NFSLY_WRITTEN ; 
 struct ucred* FUNC5 (struct ucred*) ; 
 int /*<<< orphan*/  NFSSTA_OPENMODE ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfsnode*) ; 
 int /*<<< orphan*/  NFSV4OPEN_ACCESSREAD ; 
 int /*<<< orphan*/  NFSV4OPEN_ACCESSWRITE ; 
 int NNOLAYOUT ; 
 int NWRITEOPENED ; 
 int /*<<< orphan*/  PVFS ; 
 struct nfsmount* FUNC9 (int /*<<< orphan*/ ) ; 
 struct nfsnode* FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct nfsclwritedsdorpc*,int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC13 (struct mbuf*) ; 
 struct nfsclwritedsdorpc* FUNC14 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ nfs_numnfscbd ; 
 int FUNC15 (int /*<<< orphan*/ ,struct uio*,int*,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nfscldevinfo*,struct nfscllayout*,struct nfsclflayout*,scalar_t__,scalar_t__,int,int,struct mbuf*,struct nfsclwritedsdorpc*,struct ucred*,int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ ,struct uio*,int*,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nfscldevinfo*,struct nfscllayout*,struct nfsclflayout*,scalar_t__,scalar_t__,int,struct ucred*,int /*<<< orphan*/ *) ; 
 scalar_t__ nfscl_enablecallb ; 
 int FUNC17 (struct nfscllayout*,scalar_t__,int /*<<< orphan*/ ,struct nfsclflayout**) ; 
 struct nfscldevinfo* FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nfscllayout* FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct nfsclflayout**,int*) ; 
 scalar_t__ FUNC20 (struct nfsmount*) ; 
 int FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct ucred*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC22 (void*) ; 
 int /*<<< orphan*/  FUNC23 (struct nfscldevinfo*) ; 
 int /*<<< orphan*/  FUNC24 (struct nfscllayout*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct nfsmount*) ; 
 struct mbuf* FUNC26 (struct uio*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC27 (struct nfsmount*,int /*<<< orphan*/ ,TYPE_3__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,struct nfscllayout**,struct ucred*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 

int
FUNC30(vnode_t vp, struct uio *uiop, int *iomode, int *must_commit,
    uint32_t rwaccess, int docommit, struct ucred *cred, NFSPROC_T *p)
{
	struct nfsnode *np = FUNC10(vp);
	struct nfsmount *nmp = FUNC9(FUNC29(vp));
	struct nfscllayout *layp;
	struct nfscldevinfo *dip;
	struct nfsclflayout *rflp;
	struct mbuf *m;
	struct nfsclwritedsdorpc *drpc, *tdrpc;
	nfsv4stateid_t stateid;
	struct ucred *newcred;
	uint64_t lastbyte, len, off, oresid, xfer;
	int eof, error, firstmirror, i, iolaymode, mirrorcnt, recalled, timo;
	void *lckp;
	uint8_t *dev;
	void *iovbase = NULL;
	size_t iovlen = 0;
	off_t offs = 0;
	ssize_t resid = 0;

	if (!FUNC1(nmp) || nfscl_enablecallb == 0 || nfs_numnfscbd == 0 ||
	    (np->n_flag & NNOLAYOUT) != 0)
		return (EIO);
	/* Now, get a reference cnt on the clientid for this mount. */
	if (FUNC20(nmp) == 0)
		return (EIO);

	/* Find an appropriate stateid. */
	newcred = FUNC5(cred);
	error = FUNC21(vp, np->n_fhp->nfh_fh, np->n_fhp->nfh_len,
	    rwaccess, 1, newcred, p, &stateid, &lckp);
	if (error != 0) {
		FUNC0(newcred);
		FUNC25(nmp);
		return (error);
	}
	/* Search for a layout for this file. */
	off = uiop->uio_offset;
	layp = FUNC19(nmp->nm_clp, np->n_fhp->nfh_fh,
	    np->n_fhp->nfh_len, off, &rflp, &recalled);
	if (layp == NULL || rflp == NULL) {
		if (recalled != 0) {
			FUNC0(newcred);
			FUNC25(nmp);
			return (EIO);
		}
		if (layp != NULL) {
			FUNC24(layp, (rflp == NULL) ? 1 : 0);
			layp = NULL;
		}
		/* Try and get a Layout, if it is supported. */
		if (rwaccess == NFSV4OPEN_ACCESSWRITE ||
		    (np->n_flag & NWRITEOPENED) != 0)
			iolaymode = NFSLAYOUTIOMODE_RW;
		else
			iolaymode = NFSLAYOUTIOMODE_READ;
		error = FUNC27(nmp, vp, np->n_fhp, iolaymode,
		    NULL, &stateid, off, &layp, newcred, p);
		if (error != 0) {
			FUNC4(np);
			np->n_flag |= NNOLAYOUT;
			FUNC8(np);
			if (lckp != NULL)
				FUNC22(lckp);
			FUNC0(newcred);
			if (layp != NULL)
				FUNC24(layp, 0);
			FUNC25(nmp);
			return (error);
		}
	}

	/*
	 * Loop around finding a layout that works for the first part of
	 * this I/O operation, and then call the function that actually
	 * does the RPC.
	 */
	eof = 0;
	len = (uint64_t)uiop->uio_resid;
	while (len > 0 && error == 0 && eof == 0) {
		off = uiop->uio_offset;
		error = FUNC17(layp, off, rwaccess, &rflp);
		if (error == 0) {
			oresid = xfer = (uint64_t)uiop->uio_resid;
			if (xfer > (rflp->nfsfl_end - rflp->nfsfl_off))
				xfer = rflp->nfsfl_end - rflp->nfsfl_off;
			/*
			 * For Flex File layout with mirrored DSs, select one
			 * of them at random for reads. For writes and commits,
			 * do all mirrors.
			 */
			m = NULL;
			tdrpc = drpc = NULL;
			firstmirror = 0;
			mirrorcnt = 1;
			if ((layp->nfsly_flags & NFSLY_FLEXFILE) != 0 &&
			    (mirrorcnt = rflp->nfsfl_mirrorcnt) > 1) {
				if (rwaccess == NFSV4OPEN_ACCESSREAD) {
					firstmirror = FUNC11() % mirrorcnt;
					mirrorcnt = firstmirror + 1;
				} else {
					if (docommit == 0) {
						/*
						 * Save values, so uiop can be
						 * rolled back upon a write
						 * error.
						 */
						offs = uiop->uio_offset;
						resid = uiop->uio_resid;
						iovbase =
						    uiop->uio_iov->iov_base;
						iovlen = uiop->uio_iov->iov_len;
						m = FUNC26(uiop, len,
						    NULL, NULL);
					}
					tdrpc = drpc = FUNC14(sizeof(*drpc) *
					    (mirrorcnt - 1), M_TEMP, M_WAITOK |
					    M_ZERO);
				}
			}
			for (i = firstmirror; i < mirrorcnt && error == 0; i++){
				if ((layp->nfsly_flags & NFSLY_FLEXFILE) != 0) {
					dev = rflp->nfsfl_ffm[i].dev;
					dip = FUNC18(nmp->nm_clp, dev,
					    rflp->nfsfl_ffm[i].devp);
				} else {
					dev = rflp->nfsfl_dev;
					dip = FUNC18(nmp->nm_clp, dev,
					    rflp->nfsfl_devp);
				}
				if (dip != NULL) {
					if ((rflp->nfsfl_flags & NFSFL_FLEXFILE)
					    != 0)
						error = FUNC15(vp,
						    uiop, iomode, must_commit,
						    &eof, &stateid, rwaccess,
						    dip, layp, rflp, off, xfer,
						    i, docommit, m, tdrpc,
						    newcred, p);
					else
						error = FUNC16(vp,
						    uiop, iomode, must_commit,
						    &eof, &stateid, rwaccess,
						    dip, layp, rflp, off, xfer,
						    docommit, newcred, p);
					FUNC23(dip);
				} else
					error = EIO;
				tdrpc++;
			}
			if (m != NULL)
				FUNC13(m);
			tdrpc = drpc;
			timo = hz / 50;		/* Wait for 20msec. */
			if (timo < 1)
				timo = 1;
			for (i = firstmirror; i < mirrorcnt - 1 &&
			    tdrpc != NULL; i++, tdrpc++) {
				/*
				 * For the unused drpc entries, both inprog and
				 * err == 0, so this loop won't break.
				 */
				while (tdrpc->inprog != 0 && tdrpc->done == 0)
					FUNC28(&tdrpc->tsk, PVFS, "clrpcio",
					    timo);
				if (error == 0 && tdrpc->err != 0)
					error = tdrpc->err;
			}
			FUNC12(drpc, M_TEMP);
			if (error == 0) {
				if (mirrorcnt > 1 && rwaccess ==
				    NFSV4OPEN_ACCESSWRITE && docommit == 0) {
					FUNC2();
					layp->nfsly_flags |= NFSLY_WRITTEN;
					FUNC6();
				}
				lastbyte = off + xfer - 1;
				FUNC2();
				if (lastbyte > layp->nfsly_lastbyte)
					layp->nfsly_lastbyte = lastbyte;
				FUNC6();
			} else if (error == NFSERR_OPENMODE &&
			    rwaccess == NFSV4OPEN_ACCESSREAD) {
				FUNC3(nmp);
				nmp->nm_state |= NFSSTA_OPENMODE;
				FUNC7(nmp);
			} else
				error = EIO;
			if (error == 0)
				len -= (oresid - (uint64_t)uiop->uio_resid);
			else if (mirrorcnt > 1 && rwaccess ==
			    NFSV4OPEN_ACCESSWRITE && docommit == 0) {
				/*
				 * In case the rpc gets retried, roll the
				 * uio fields changed by nfsm_uiombuflist()
				 * back.
				 */
				uiop->uio_offset = offs;
				uiop->uio_resid = resid;
				uiop->uio_iov->iov_base = iovbase;
				uiop->uio_iov->iov_len = iovlen;
			}
		}
	}
	if (lckp != NULL)
		FUNC22(lckp);
	FUNC0(newcred);
	FUNC24(layp, 0);
	FUNC25(nmp);
	return (error);
}