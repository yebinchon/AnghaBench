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
typedef  scalar_t__ uint64_t ;
struct m_ext2fs {int /*<<< orphan*/  e2fs_bsize; } ;
struct inode {int /*<<< orphan*/  i_vnode; scalar_t__ i_facl; int /*<<< orphan*/  i_devvp; struct m_ext2fs* i_e2fs; } ;
struct ext2fs_extattr_header {scalar_t__ h_magic; int h_refcount; } ;
struct buf {int /*<<< orphan*/  b_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOSPC ; 
 struct ext2fs_extattr_header* FUNC0 (struct buf*) ; 
 scalar_t__ EXTATTR_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (struct buf*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct m_ext2fs*,scalar_t__) ; 
 struct buf* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct inode *ip, struct buf **bpp)
{
	struct m_ext2fs *fs;
	struct buf *sbp;
	struct buf *cbp;
	struct ext2fs_extattr_header *header;
	uint64_t facl;

	fs = ip->i_e2fs;
	sbp = *bpp;

	header = FUNC0(sbp);
	if (header->h_magic != EXTATTR_MAGIC || header->h_refcount == 1)
		return (EINVAL);

	facl = FUNC2(ip);
	if (!facl)
		return (ENOSPC);

	cbp = FUNC6(ip->i_devvp, FUNC5(fs, facl), fs->e2fs_bsize, 0, 0, 0);
	if (!cbp) {
		FUNC3(ip, facl, fs->e2fs_bsize);
		return (EIO);
	}

	FUNC7(cbp->b_data, sbp->b_data, fs->e2fs_bsize);
	header->h_refcount--;
	FUNC1(sbp);

	ip->i_facl = facl;
	FUNC4(ip->i_vnode, 1);

	header = FUNC0(cbp);
	header->h_refcount = 1;

	*bpp = cbp;

	return (0);
}