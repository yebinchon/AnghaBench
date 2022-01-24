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
typedef  int /*<<< orphan*/  vnode_t ;
typedef  int uint64_t ;
struct uio {scalar_t__ uio_resid; } ;
struct ucred {int dummy; } ;
struct nfsnode {int /*<<< orphan*/  n_flag; struct nfsfh* n_fhp; } ;
struct nfsfh {int dummy; } ;
struct nfscllayout {int /*<<< orphan*/  nfsly_flags; } ;
struct nfsclflayout {int nfsfl_patoff; int nfsfl_util; int nfsfl_stripe1; int nfsfl_fhcnt; struct nfsfh** nfsfl_fh; } ;
struct nfsclds {int dummy; } ;
struct nfscldevinfo {int nfsdi_stripecnt; } ;
typedef  int /*<<< orphan*/  nfsv4stateid_t ;
typedef  int /*<<< orphan*/  NFSPROC_T ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  NDSCOMMIT ; 
 int NFSFLAYUTIL_COMMIT_THRU_MDS ; 
 int NFSFLAYUTIL_DENSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct nfsnode*) ; 
 int /*<<< orphan*/  NFSLY_WRITTEN ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct nfsnode*) ; 
 int NFSV4OPEN_ACCESSREAD ; 
 struct nfsnode* FUNC4 (int /*<<< orphan*/ ) ; 
 struct nfsclds** FUNC5 (struct nfscldevinfo*,int) ; 
 int FUNC6 (struct nfscldevinfo*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int,struct nfsclds*,struct nfsfh*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ucred*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct uio*,int /*<<< orphan*/ *,int*,struct nfsclds*,int,int,struct nfsfh*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ucred*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct uio*,int*,int*,int /*<<< orphan*/ *,struct nfsclds*,int,int,struct nfsfh*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ucred*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(vnode_t vp, struct uio *uiop, int *iomode, int *must_commit,
    int *eofp, nfsv4stateid_t *stateidp, int rwflag, struct nfscldevinfo *dp,
    struct nfscllayout *lyp, struct nfsclflayout *flp, uint64_t off,
    uint64_t len, int docommit, struct ucred *cred, NFSPROC_T *p)
{
	uint64_t io_off, rel_off, stripe_unit_size, transfer, xfer;
	int commit_thru_mds, error, stripe_index, stripe_pos;
	struct nfsnode *np;
	struct nfsfh *fhp;
	struct nfsclds **dspp;

	np = FUNC4(vp);
	rel_off = off - flp->nfsfl_patoff;
	stripe_unit_size = (flp->nfsfl_util >> 6) & 0x3ffffff;
	stripe_pos = (rel_off / stripe_unit_size + flp->nfsfl_stripe1) %
	    dp->nfsdi_stripecnt;
	transfer = stripe_unit_size - (rel_off % stripe_unit_size);
	error = 0;

	/* Loop around, doing I/O for each stripe unit. */
	while (len > 0 && error == 0) {
		stripe_index = FUNC6(dp, stripe_pos);
		dspp = FUNC5(dp, stripe_index);
		if (len > transfer && docommit == 0)
			xfer = transfer;
		else
			xfer = len;
		if ((flp->nfsfl_util & NFSFLAYUTIL_DENSE) != 0) {
			/* Dense layout. */
			if (stripe_pos >= flp->nfsfl_fhcnt)
				return (EIO);
			fhp = flp->nfsfl_fh[stripe_pos];
			io_off = (rel_off / (stripe_unit_size *
			    dp->nfsdi_stripecnt)) * stripe_unit_size +
			    rel_off % stripe_unit_size;
		} else {
			/* Sparse layout. */
			if (flp->nfsfl_fhcnt > 1) {
				if (stripe_index >= flp->nfsfl_fhcnt)
					return (EIO);
				fhp = flp->nfsfl_fh[stripe_index];
			} else if (flp->nfsfl_fhcnt == 1)
				fhp = flp->nfsfl_fh[0];
			else
				fhp = np->n_fhp;
			io_off = off;
		}
		if ((flp->nfsfl_util & NFSFLAYUTIL_COMMIT_THRU_MDS) != 0) {
			commit_thru_mds = 1;
			if (docommit != 0)
				error = EIO;
		} else {
			commit_thru_mds = 0;
			FUNC1(np);
			np->n_flag |= NDSCOMMIT;
			FUNC3(np);
		}
		if (docommit != 0) {
			if (error == 0)
				error = FUNC7(vp, io_off, xfer,
				    *dspp, fhp, 0, 0, cred, p);
			if (error == 0) {
				/*
				 * Set both eof and uio_resid = 0 to end any
				 * loops.
				 */
				*eofp = 1;
				uiop->uio_resid = 0;
			} else {
				FUNC1(np);
				np->n_flag &= ~NDSCOMMIT;
				FUNC3(np);
			}
		} else if (rwflag == NFSV4OPEN_ACCESSREAD)
			error = FUNC8(vp, uiop, stateidp, eofp, *dspp,
			    io_off, xfer, fhp, 0, 0, 0, cred, p);
		else {
			error = FUNC9(vp, uiop, iomode, must_commit,
			    stateidp, *dspp, io_off, xfer, fhp, commit_thru_mds,
			    0, 0, 0, cred, p);
			if (error == 0) {
				FUNC0();
				lyp->nfsly_flags |= NFSLY_WRITTEN;
				FUNC2();
			}
		}
		if (error == 0) {
			transfer = stripe_unit_size;
			stripe_pos = (stripe_pos + 1) % dp->nfsdi_stripecnt;
			len -= xfer;
			off += xfer;
		}
	}
	return (error);
}