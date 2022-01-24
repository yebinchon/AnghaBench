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
struct m_ext2fs {int dummy; } ;
struct inode {struct m_ext2fs* i_e2fs; } ;
struct ext2fs_direct_tail {int /*<<< orphan*/  e2dt_checksum; } ;
struct ext2fs_direct_2 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT2F_ROCOMPAT_METADATA_CKSUM ; 
 int /*<<< orphan*/  FUNC0 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct ext2fs_direct_2*,int) ; 
 struct ext2fs_direct_tail* FUNC2 (struct inode*,struct ext2fs_direct_2*) ; 

void
FUNC3(struct inode *ip, struct ext2fs_direct_2 *ep)
{
	struct m_ext2fs *fs;
	struct ext2fs_direct_tail *tp;

	fs = ip->i_e2fs;

	if (!FUNC0(fs, EXT2F_ROCOMPAT_METADATA_CKSUM))
		return;

	tp = FUNC2(ip, ep);
	if (tp == NULL)
		return;

	tp->e2dt_checksum =
	    FUNC1(ip, ep, (char *)tp - (char *)ep);
}