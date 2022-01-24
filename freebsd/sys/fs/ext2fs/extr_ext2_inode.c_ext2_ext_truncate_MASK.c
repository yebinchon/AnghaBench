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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u_int ;
struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct m_ext2fs {int e2fs_maxfilesize; int e2fs_bsize; } ;
struct inode {int i_size; int i_flag; struct m_ext2fs* i_e2fs; } ;
struct buf {int b_bufsize; int /*<<< orphan*/  b_flags; scalar_t__ b_data; } ;
typedef  int off_t ;
typedef  int int32_t ;

/* Variables and functions */
 int BA_CLRBUF ; 
 int /*<<< orphan*/  B_CLUSTEROK ; 
 scalar_t__ FUNC0 (struct vnode*) ; 
 int EFBIG ; 
 int IN_CHANGE ; 
 int IN_UPDATE ; 
 int IO_SYNC ; 
 struct inode* FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct buf*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct buf*) ; 
 int /*<<< orphan*/  FUNC4 (struct buf*) ; 
 int FUNC5 (struct m_ext2fs*,int) ; 
 int FUNC6 (struct m_ext2fs*,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct buf*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct inode*,int,int,struct ucred*,struct buf**,int) ; 
 int FUNC10 (struct vnode*,int) ; 
 int FUNC11 (struct inode*,int,int,struct ucred*,struct thread*) ; 
 int FUNC12 (struct m_ext2fs*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct vnode*,int) ; 
 int FUNC14 (struct vnode*,int,int) ; 

__attribute__((used)) static int
FUNC15(struct vnode *vp, off_t length, int flags,
    struct ucred *cred, struct thread *td)
{
	struct vnode *ovp = vp;
	int32_t lastblock;
	struct m_ext2fs *fs;
	struct inode *oip;
	struct buf *bp;
	uint32_t lbn, offset;
	int error, size;
	off_t osize;

	oip = FUNC1(ovp);
	fs = oip->i_e2fs;
	osize = oip->i_size;

	if (osize < length) {
		if (length > oip->i_e2fs->e2fs_maxfilesize) {
			return (EFBIG);
		}
		FUNC13(ovp, length);
		offset = FUNC5(fs, length - 1);
		lbn = FUNC12(fs, length - 1);
		flags |= BA_CLRBUF;
		error = FUNC9(oip, lbn, offset + 1, cred, &bp, flags);
		if (error) {
			FUNC13(vp, osize);
			return (error);
		}
		oip->i_size = length;
		if (bp->b_bufsize == fs->e2fs_bsize)
			bp->b_flags |= B_CLUSTEROK;
		if (flags & IO_SYNC)
			FUNC7(bp);
		else if (FUNC0(ovp))
			FUNC4(bp);
		else
			FUNC3(bp);
		oip->i_flag |= IN_CHANGE | IN_UPDATE;
		return (FUNC10(ovp, !FUNC0(ovp)));
	}

	lastblock = (length + fs->e2fs_bsize - 1) / fs->e2fs_bsize;
	error = FUNC11(oip, lastblock, flags, cred, td);
	if (error)
		return (error);

	offset = FUNC5(fs, length);
	if (offset == 0) {
		oip->i_size = length;
	} else {
		lbn = FUNC12(fs, length);
		flags |= BA_CLRBUF;
		error = FUNC9(oip, lbn, offset, cred, &bp, flags);
		if (error) {
			return (error);
		}
		oip->i_size = length;
		size = FUNC6(fs, oip, lbn);
		FUNC8((char *)bp->b_data + offset, (u_int)(size - offset));
		FUNC2(bp, size);
		if (bp->b_bufsize == fs->e2fs_bsize)
			bp->b_flags |= B_CLUSTEROK;
		if (flags & IO_SYNC)
			FUNC7(bp);
		else if (FUNC0(ovp))
			FUNC4(bp);
		else
			FUNC3(bp);
	}

	oip->i_size = osize;
	error = FUNC14(ovp, length, (int)fs->e2fs_bsize);
	if (error)
		return (error);

	FUNC13(ovp, length);

	oip->i_size = length;
	oip->i_flag |= IN_CHANGE | IN_UPDATE;
	error = FUNC10(ovp, !FUNC0(ovp));

	return (error);
}