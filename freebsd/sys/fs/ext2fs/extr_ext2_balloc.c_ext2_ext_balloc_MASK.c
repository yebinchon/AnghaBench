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
typedef  int /*<<< orphan*/  uint32_t ;
struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct m_ext2fs {int /*<<< orphan*/  e2fs_bsize; } ;
struct inode {struct m_ext2fs* i_e2fs; } ;
struct buf {int /*<<< orphan*/  b_blkno; } ;
typedef  int /*<<< orphan*/  daddr_t ;

/* Variables and functions */
 int BA_CLRBUF ; 
 int EIO ; 
 struct vnode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NOCRED ; 
 int FUNC1 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buf**) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ ,int,struct ucred*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 struct buf* FUNC4 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct buf*) ; 

__attribute__((used)) static int
FUNC7(struct inode *ip, uint32_t lbn, int size,
    struct ucred *cred, struct buf **bpp, int flags)
{
	struct m_ext2fs *fs;
	struct buf *bp = NULL;
	struct vnode *vp = FUNC0(ip);
	daddr_t newblk;
	int blks, error, allocated;

	fs = ip->i_e2fs;
	blks = FUNC5(size, fs->e2fs_bsize);

	error = FUNC2(ip, lbn, blks, cred, NULL, &allocated, &newblk);
	if (error)
		return (error);

	if (allocated) {
		bp = FUNC4(vp, lbn, fs->e2fs_bsize, 0, 0, 0);
		if(!bp)
			return (EIO);
	} else {
		error = FUNC1(vp, lbn, fs->e2fs_bsize, NOCRED, &bp);
		if (error) {
			return (error);
		}
	}


	bp->b_blkno = FUNC3(fs, newblk);
	if (flags & BA_CLRBUF)
		FUNC6(bp);

	*bpp = bp;

	return (error);
}