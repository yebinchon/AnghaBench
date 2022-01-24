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
typedef  scalar_t__ ufs_lbn_t ;
typedef  void* u_int ;
struct vnode {int dummy; } ;
struct uio {scalar_t__ uio_rw; scalar_t__ uio_resid; scalar_t__ uio_offset; } ;
struct ufs2_dinode {scalar_t__ di_extsize; } ;
struct inode {struct ufs2_dinode* i_din2; } ;
struct fs {scalar_t__ fs_magic; long fs_bsize; } ;
struct buf {scalar_t__ b_data; scalar_t__ b_resid; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 scalar_t__ FS_UFS2_MAGIC ; 
 struct fs* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  NOCRED ; 
 scalar_t__ UIO_READ ; 
 struct inode* FUNC2 (struct vnode*) ; 
 long FUNC3 (struct fs*,scalar_t__) ; 
 int FUNC4 (struct vnode*,scalar_t__,long,int /*<<< orphan*/ ,struct buf**) ; 
 int FUNC5 (struct vnode*,scalar_t__,long,scalar_t__*,void**,int,int /*<<< orphan*/ ,struct buf**) ; 
 int /*<<< orphan*/  FUNC6 (struct buf*) ; 
 scalar_t__ FUNC7 (struct fs*,scalar_t__) ; 
 scalar_t__ FUNC8 (struct fs*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 void* FUNC10 (struct fs*,scalar_t__,scalar_t__) ; 
 int FUNC11 (char*,int,struct uio*) ; 
 int /*<<< orphan*/  FUNC12 (struct buf*,int) ; 

__attribute__((used)) static int
FUNC13(struct vnode *vp, struct uio *uio, int ioflag)
{
	struct inode *ip;
	struct ufs2_dinode *dp;
	struct fs *fs;
	struct buf *bp;
	ufs_lbn_t lbn, nextlbn;
	off_t bytesinfile;
	long size, xfersize, blkoffset;
	ssize_t orig_resid;
	int error;

	ip = FUNC2(vp);
	fs = FUNC0(ip);
	dp = ip->i_din2;

#ifdef INVARIANTS
	if (uio->uio_rw != UIO_READ || fs->fs_magic != FS_UFS2_MAGIC)
		panic("ffs_extread: mode");

#endif
	orig_resid = uio->uio_resid;
	FUNC1(orig_resid >= 0, ("ffs_extread: uio->uio_resid < 0"));
	if (orig_resid == 0)
		return (0);
	FUNC1(uio->uio_offset >= 0, ("ffs_extread: uio->uio_offset < 0"));

	for (error = 0, bp = NULL; uio->uio_resid > 0; bp = NULL) {
		if ((bytesinfile = dp->di_extsize - uio->uio_offset) <= 0)
			break;
		lbn = FUNC7(fs, uio->uio_offset);
		nextlbn = lbn + 1;

		/*
		 * size of buffer.  The buffer representing the
		 * end of the file is rounded up to the size of
		 * the block type ( fragment or full block,
		 * depending ).
		 */
		size = FUNC10(fs, dp->di_extsize, lbn);
		blkoffset = FUNC3(fs, uio->uio_offset);

		/*
		 * The amount we want to transfer in this iteration is
		 * one FS block less the amount of the data before
		 * our startpoint (duh!)
		 */
		xfersize = fs->fs_bsize - blkoffset;

		/*
		 * But if we actually want less than the block,
		 * or the file doesn't have a whole block more of data,
		 * then use the lesser number.
		 */
		if (uio->uio_resid < xfersize)
			xfersize = uio->uio_resid;
		if (bytesinfile < xfersize)
			xfersize = bytesinfile;

		if (FUNC8(fs, nextlbn) >= dp->di_extsize) {
			/*
			 * Don't do readahead if this is the end of the info.
			 */
			error = FUNC4(vp, -1 - lbn, size, NOCRED, &bp);
		} else {
			/*
			 * If we have a second block, then
			 * fire off a request for a readahead
			 * as well as a read. Note that the 4th and 5th
			 * arguments point to arrays of the size specified in
			 * the 6th argument.
			 */
			u_int nextsize = FUNC10(fs, dp->di_extsize, nextlbn);

			nextlbn = -1 - nextlbn;
			error = FUNC5(vp, -1 - lbn,
			    size, &nextlbn, &nextsize, 1, NOCRED, &bp);
		}
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
	 * This can only happen in the case of an error
	 * because the loop above resets bp to NULL on each iteration
	 * and on normal completion has not set a new value into it.
	 * so it must have come from a 'break' statement
	 */
	if (bp != NULL)
		FUNC12(bp, ioflag);
	return (error);
}