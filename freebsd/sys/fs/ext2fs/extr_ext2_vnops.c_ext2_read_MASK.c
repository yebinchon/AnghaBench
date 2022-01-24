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
typedef  void* u_int ;
struct vop_read_args {int a_ioflag; struct uio* a_uio; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; TYPE_1__* v_mount; } ;
struct uio {scalar_t__ uio_rw; int uio_resid; scalar_t__ uio_offset; } ;
struct m_ext2fs {scalar_t__ e2fs_maxfilesize; long e2fs_fsize; } ;
struct inode {scalar_t__ i_size; int /*<<< orphan*/  i_flag; struct m_ext2fs* i_e2fs; } ;
struct buf {scalar_t__ b_data; scalar_t__ b_resid; } ;
typedef  scalar_t__ off_t ;
typedef  scalar_t__ daddr_t ;
struct TYPE_2__ {int mnt_maxsymlinklen; int mnt_flag; } ;

/* Variables and functions */
 int EOVERFLOW ; 
 int /*<<< orphan*/  IN_ACCESS ; 
 int IO_SEQSHIFT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MNT_NOATIME ; 
 int MNT_NOCLUSTERR ; 
 int MNT_RDONLY ; 
 int /*<<< orphan*/  NOCRED ; 
 scalar_t__ UIO_READ ; 
 scalar_t__ VDIR ; 
 scalar_t__ VLNK ; 
 scalar_t__ VREG ; 
 struct inode* FUNC1 (struct vnode*) ; 
 long FUNC2 (struct m_ext2fs*,scalar_t__) ; 
 void* FUNC3 (struct m_ext2fs*,struct inode*,scalar_t__) ; 
 int FUNC4 (struct vnode*,scalar_t__,long,int /*<<< orphan*/ ,struct buf**) ; 
 int FUNC5 (struct vnode*,scalar_t__,long,scalar_t__*,void**,int,int /*<<< orphan*/ ,struct buf**) ; 
 int /*<<< orphan*/  FUNC6 (struct buf*) ; 
 int FUNC7 (struct vnode*,scalar_t__,scalar_t__,long,int /*<<< orphan*/ ,long,int,int /*<<< orphan*/ ,struct buf**) ; 
 scalar_t__ FUNC8 (struct m_ext2fs*,scalar_t__) ; 
 scalar_t__ FUNC9 (struct m_ext2fs*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,...) ; 
 int FUNC11 (char*,int,struct uio*) ; 
 int /*<<< orphan*/  FUNC12 (struct buf*,int) ; 

__attribute__((used)) static int
FUNC13(struct vop_read_args *ap)
{
	struct vnode *vp;
	struct inode *ip;
	struct uio *uio;
	struct m_ext2fs *fs;
	struct buf *bp;
	daddr_t lbn, nextlbn;
	off_t bytesinfile;
	long size, xfersize, blkoffset;
	int error, orig_resid, seqcount;
	int ioflag;

	vp = ap->a_vp;
	uio = ap->a_uio;
	ioflag = ap->a_ioflag;

	seqcount = ap->a_ioflag >> IO_SEQSHIFT;
	ip = FUNC1(vp);

#ifdef INVARIANTS
	if (uio->uio_rw != UIO_READ)
		panic("%s: mode", "ext2_read");

	if (vp->v_type == VLNK) {
		if ((int)ip->i_size < vp->v_mount->mnt_maxsymlinklen)
			panic("%s: short symlink", "ext2_read");
	} else if (vp->v_type != VREG && vp->v_type != VDIR)
		panic("%s: type %d", "ext2_read", vp->v_type);
#endif
	orig_resid = uio->uio_resid;
	FUNC0(orig_resid >= 0, ("ext2_read: uio->uio_resid < 0"));
	if (orig_resid == 0)
		return (0);
	FUNC0(uio->uio_offset >= 0, ("ext2_read: uio->uio_offset < 0"));
	fs = ip->i_e2fs;
	if (uio->uio_offset < ip->i_size &&
	    uio->uio_offset >= fs->e2fs_maxfilesize)
		return (EOVERFLOW);

	for (error = 0, bp = NULL; uio->uio_resid > 0; bp = NULL) {
		if ((bytesinfile = ip->i_size - uio->uio_offset) <= 0)
			break;
		lbn = FUNC8(fs, uio->uio_offset);
		nextlbn = lbn + 1;
		size = FUNC3(fs, ip, lbn);
		blkoffset = FUNC2(fs, uio->uio_offset);

		xfersize = fs->e2fs_fsize - blkoffset;
		if (uio->uio_resid < xfersize)
			xfersize = uio->uio_resid;
		if (bytesinfile < xfersize)
			xfersize = bytesinfile;

		if (FUNC9(fs, nextlbn) >= ip->i_size)
			error = FUNC4(vp, lbn, size, NOCRED, &bp);
		else if ((vp->v_mount->mnt_flag & MNT_NOCLUSTERR) == 0) {
			error = FUNC7(vp, ip->i_size, lbn, size,
			    NOCRED, blkoffset + uio->uio_resid, seqcount,
			    0, &bp);
		} else if (seqcount > 1) {
			u_int nextsize = FUNC3(fs, ip, nextlbn);

			error = FUNC5(vp, lbn,
			    size, &nextlbn, &nextsize, 1, NOCRED, &bp);
		} else
			error = FUNC4(vp, lbn, size, NOCRED, &bp);
		if (error) {
			FUNC6(bp);
			bp = NULL;
			break;
		}

		/*
		 * We should only get non-zero b_resid when an I/O error
		 * has occurred, which should cause us to break above.
		 * However, if the short read did not cause an error,
		 * then we want to ensure that we do not uiomove bad
		 * or uninitialized data.
		 */
		size -= bp->b_resid;
		if (size < xfersize) {
			if (size == 0)
				break;
			xfersize = size;
		}
		error = FUNC11((char *)bp->b_data + blkoffset,
		    (int)xfersize, uio);
		if (error)
			break;
		FUNC12(bp, ioflag);
	}

	/*
	 * This can only happen in the case of an error because the loop
	 * above resets bp to NULL on each iteration and on normal
	 * completion has not set a new value into it. so it must have come
	 * from a 'break' statement
	 */
	if (bp != NULL)
		FUNC12(bp, ioflag);

	if ((error == 0 || uio->uio_resid != orig_resid) &&
	    (vp->v_mount->mnt_flag & (MNT_NOATIME | MNT_RDONLY)) == 0)
		ip->i_flag |= IN_ACCESS;
	return (error);
}