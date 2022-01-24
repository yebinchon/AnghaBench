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
struct m_ext2fs {int e2fs_bsize; } ;
struct inode {struct m_ext2fs* i_e2fs; } ;
struct ext2fs_htree_tail {int dummy; } ;
struct ext2fs_htree_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT2F_ROCOMPAT_METADATA_CKSUM ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC2(struct inode *ip, int len)
{
	struct m_ext2fs *fs;
	uint32_t space;

	fs = ip->i_e2fs;
	space = ip->i_e2fs->e2fs_bsize - FUNC0(1) -
	    FUNC0(2) - len;

	if (FUNC1(fs, EXT2F_ROCOMPAT_METADATA_CKSUM))
		space -= sizeof(struct ext2fs_htree_tail);

	return (space / sizeof(struct ext2fs_htree_entry));
}