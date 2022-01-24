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
struct m_ext2fs {int /*<<< orphan*/  e2fs_bsize; } ;
struct inode {int /*<<< orphan*/  i_vnode; int /*<<< orphan*/  i_facl; struct m_ext2fs* i_e2fs; int /*<<< orphan*/  i_blocks; int /*<<< orphan*/  i_devvp; } ;
struct ext2fs_extattr_header {scalar_t__ h_magic; int h_blocks; int h_refcount; } ;
struct buf {scalar_t__ b_bufsize; scalar_t__ b_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct buf*) ; 
 struct ext2fs_extattr_header* FUNC1 (struct buf*) ; 
 scalar_t__ EXTATTR_MAGIC ; 
 int /*<<< orphan*/  NOCRED ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buf**) ; 
 int /*<<< orphan*/  FUNC3 (struct buf*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct buf*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 

int FUNC10(struct inode *ip)
{
	struct m_ext2fs *fs;
	struct buf *bp;
	struct ext2fs_extattr_header *header;
	int error;

	fs = ip->i_e2fs;

	if (!ip->i_facl)
		return (0);

	error = FUNC2(ip->i_devvp, FUNC9(fs, ip->i_facl),
	    fs->e2fs_bsize, NOCRED, &bp);
	if (error) {
		return (error);
	}

	/* Check attributes magic value */
	header = FUNC1(bp);
	if (header->h_magic != EXTATTR_MAGIC || header->h_blocks != 1) {
		FUNC3(bp);
		return (EINVAL);
	}

	error = FUNC7(FUNC0(bp),
	    bp->b_data + bp->b_bufsize);
	if (error) {
		FUNC3(bp);
		return (error);
	}

	if (header->h_refcount > 1) {
		header->h_refcount--;
		FUNC5(bp);
	} else {
		FUNC6(ip, ip->i_facl, ip->i_e2fs->e2fs_bsize);
		FUNC3(bp);
	}

	ip->i_blocks -= FUNC4(ip->i_e2fs->e2fs_bsize);
	ip->i_facl = 0;
	FUNC8(ip->i_vnode, 1);

	return (0);
}