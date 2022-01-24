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
typedef  scalar_t__ uoff_t ;
typedef  scalar_t__ u_long ;
struct vop_write_args {int a_ioflag; struct ucred* a_cred; struct vnode* a_vp; struct uio* a_uio; } ;
struct vnode {int v_type; TYPE_2__* v_mount; } ;
struct uio {scalar_t__ uio_offset; scalar_t__ uio_resid; int /*<<< orphan*/  uio_td; } ;
struct ucred {int dummy; } ;
struct msdosfsmount {int pm_crbomask; int pm_bpcluster; } ;
struct denode {scalar_t__ de_FileSize; int /*<<< orphan*/  de_flag; TYPE_1__* de_fc; int /*<<< orphan*/  de_StartCluster; int /*<<< orphan*/  de_dirclust; int /*<<< orphan*/  de_diroffset; struct msdosfsmount* de_pmp; } ;
struct buf {int b_blkno; int b_lblkno; int /*<<< orphan*/  b_flags; scalar_t__ b_data; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ daddr_t ;
struct TYPE_4__ {int mnt_flag; } ;
struct TYPE_3__ {scalar_t__ fc_frcn; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_CLUSTEROK ; 
 int /*<<< orphan*/  DE_UPDATE ; 
 int EFBIG ; 
 int EIO ; 
 int EISDIR ; 
 int ENOSPC ; 
 size_t FC_LASTFC ; 
 int IO_APPEND ; 
 int IO_SEQSHIFT ; 
 int IO_SYNC ; 
 int IO_UNIT ; 
 int MNT_NOCLUSTERW ; 
 scalar_t__ MSDOSFS_FILESIZE_MAX ; 
 int /*<<< orphan*/  NOCRED ; 
#define  VDIR 129 
#define  VREG 128 
 struct denode* FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct buf*) ; 
 int /*<<< orphan*/  FUNC2 (struct buf*) ; 
 int FUNC3 (struct vnode*,scalar_t__,int,struct ucred*,struct buf**) ; 
 int /*<<< orphan*/  FUNC4 (struct buf*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct buf*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*,struct buf*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct msdosfsmount*,scalar_t__) ; 
 scalar_t__ FUNC9 (struct msdosfsmount*,scalar_t__) ; 
 int FUNC10 (struct denode*,scalar_t__,struct ucred*) ; 
 int /*<<< orphan*/  FUNC11 (struct denode*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct denode*,int) ; 
 int FUNC13 (struct denode*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct buf* FUNC14 (struct vnode*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int FUNC17 (struct denode*,int,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,struct vnode*,struct uio*,int,...) ; 
 int /*<<< orphan*/  FUNC19 (struct buf*) ; 
 scalar_t__ FUNC20 () ; 
 int FUNC21 (scalar_t__,int,struct uio*) ; 
 scalar_t__ FUNC22 (struct vnode*,struct uio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct vnode*,int) ; 

__attribute__((used)) static int
FUNC24(struct vop_write_args *ap)
{
	int n;
	int croffset;
	ssize_t resid;
	u_long osize;
	int error = 0;
	u_long count;
	int seqcount;
	daddr_t bn, lastcn;
	struct buf *bp;
	int ioflag = ap->a_ioflag;
	struct uio *uio = ap->a_uio;
	struct vnode *vp = ap->a_vp;
	struct vnode *thisvp;
	struct denode *dep = FUNC0(vp);
	struct msdosfsmount *pmp = dep->de_pmp;
	struct ucred *cred = ap->a_cred;

#ifdef MSDOSFS_DEBUG
	printf("msdosfs_write(vp %p, uio %p, ioflag %x, cred %p\n",
	    vp, uio, ioflag, cred);
	printf("msdosfs_write(): diroff %lu, dirclust %lu, startcluster %lu\n",
	    dep->de_diroffset, dep->de_dirclust, dep->de_StartCluster);
#endif

	switch (vp->v_type) {
	case VREG:
		if (ioflag & IO_APPEND)
			uio->uio_offset = dep->de_FileSize;
		thisvp = vp;
		break;
	case VDIR:
		return EISDIR;
	default:
		FUNC16("msdosfs_write(): bad file type");
	}

	/*
	 * This is needed (unlike in ffs_write()) because we extend the
	 * file outside of the loop but we don't want to extend the file
	 * for writes of 0 bytes.
	 */
	if (uio->uio_resid == 0)
		return (0);

	/*
	 * The caller is supposed to ensure that
	 * uio->uio_offset >= 0 and uio->uio_resid >= 0.
	 */
	if ((uoff_t)uio->uio_offset + uio->uio_resid > MSDOSFS_FILESIZE_MAX)
		return (EFBIG);

	/*
	 * If they've exceeded their filesize limit, tell them about it.
	 */
	if (FUNC22(vp, uio, uio->uio_td))
		return (EFBIG);

	/*
	 * If the offset we are starting the write at is beyond the end of
	 * the file, then they've done a seek.  Unix filesystems allow
	 * files with holes in them, DOS doesn't so we must fill the hole
	 * with zeroed blocks.
	 */
	if (uio->uio_offset > dep->de_FileSize) {
		error = FUNC10(dep, uio->uio_offset, cred);
		if (error)
			return (error);
	}

	/*
	 * Remember some values in case the write fails.
	 */
	resid = uio->uio_resid;
	osize = dep->de_FileSize;

	/*
	 * If we write beyond the end of the file, extend it to its ultimate
	 * size ahead of the time to hopefully get a contiguous area.
	 */
	if (uio->uio_offset + resid > osize) {
		count = FUNC8(pmp, uio->uio_offset + resid) -
			FUNC8(pmp, osize);
		error = FUNC13(dep, count, NULL, NULL, 0);
		if (error &&  (error != ENOSPC || (ioflag & IO_UNIT)))
			goto errexit;
		lastcn = dep->de_fc[FC_LASTFC].fc_frcn;
	} else
		lastcn = FUNC8(pmp, osize) - 1;

	seqcount = ioflag >> IO_SEQSHIFT;
	do {
		if (FUNC9(pmp, uio->uio_offset) > lastcn) {
			error = ENOSPC;
			break;
		}

		croffset = uio->uio_offset & pmp->pm_crbomask;
		n = FUNC15(uio->uio_resid, pmp->pm_bpcluster - croffset);
		if (uio->uio_offset + n > dep->de_FileSize) {
			dep->de_FileSize = uio->uio_offset + n;
			/* The object size needs to be set before buffer is allocated */
			FUNC23(vp, dep->de_FileSize);
		}

		bn = FUNC9(pmp, uio->uio_offset);
		if ((uio->uio_offset & pmp->pm_crbomask) == 0
		    && (FUNC9(pmp, uio->uio_offset + uio->uio_resid)
			> FUNC9(pmp, uio->uio_offset)
			|| uio->uio_offset + uio->uio_resid >= dep->de_FileSize)) {
			/*
			 * If either the whole cluster gets written,
			 * or we write the cluster from its start beyond EOF,
			 * then no need to read data from disk.
			 */
			bp = FUNC14(thisvp, bn, pmp->pm_bpcluster, 0, 0, 0);
			/*
			 * This call to vfs_bio_clrbuf() ensures that
			 * even if vn_io_fault_uiomove() below faults,
			 * garbage from the newly instantiated buffer
			 * is not exposed to the userspace via mmap().
			 */
			FUNC19(bp);
			/*
			 * Do the bmap now, since pcbmap needs buffers
			 * for the FAT table. (see msdosfs_strategy)
			 */
			if (bp->b_blkno == bp->b_lblkno) {
				error = FUNC17(dep, bp->b_lblkno, &bn, 0, 0);
				if (error)
					bp->b_blkno = -1;
				else
					bp->b_blkno = bn;
			}
			if (bp->b_blkno == -1) {
				FUNC4(bp);
				if (!error)
					error = EIO;		/* XXX */
				break;
			}
		} else {
			/*
			 * The block we need to write into exists, so read it in.
			 */
			error = FUNC3(thisvp, bn, pmp->pm_bpcluster, cred, &bp);
			if (error) {
				break;
			}
		}

		/*
		 * Should these vnode_pager_* functions be done on dir
		 * files?
		 */

		/*
		 * Copy the data from user space into the buf header.
		 */
		error = FUNC21(bp->b_data + croffset, n, uio);
		if (error) {
			FUNC4(bp);
			break;
		}

		/* Prepare for clustered writes in some else clauses. */
		if ((vp->v_mount->mnt_flag & MNT_NOCLUSTERW) == 0)
			bp->b_flags |= B_CLUSTEROK;

		/*
		 * If IO_SYNC, then each buffer is written synchronously.
		 * Otherwise, if we have a severe page deficiency then
		 * write the buffer asynchronously.  Otherwise, if on a
		 * cluster boundary then write the buffer asynchronously,
		 * combining it with contiguous clusters if permitted and
		 * possible, since we don't expect more writes into this
		 * buffer soon.  Otherwise, do a delayed write because we
		 * expect more writes into this buffer soon.
		 */
		if (ioflag & IO_SYNC)
			(void)FUNC6(bp);
		else if (FUNC20() || FUNC5())
			FUNC1(bp);
		else if (n + croffset == pmp->pm_bpcluster) {
			if ((vp->v_mount->mnt_flag & MNT_NOCLUSTERW) == 0)
				FUNC7(vp, bp, dep->de_FileSize,
				    seqcount, 0);
			else
				FUNC1(bp);
		} else
			FUNC2(bp);
		dep->de_flag |= DE_UPDATE;
	} while (error == 0 && uio->uio_resid > 0);

	/*
	 * If the write failed and they want us to, truncate the file back
	 * to the size it was before the write was attempted.
	 */
errexit:
	if (error) {
		if (ioflag & IO_UNIT) {
			FUNC11(dep, osize, ioflag & IO_SYNC, NOCRED);
			uio->uio_offset -= resid - uio->uio_resid;
			uio->uio_resid = resid;
		} else {
			FUNC11(dep, dep->de_FileSize, ioflag & IO_SYNC, NOCRED);
			if (uio->uio_resid != resid)
				error = 0;
		}
	} else if (ioflag & IO_SYNC)
		error = FUNC12(dep, 1);
	return (error);
}