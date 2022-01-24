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
struct ext4_extent_tail {int /*<<< orphan*/  et_checksum; } ;
struct ext4_extent_header {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT2F_ROCOMPAT_METADATA_CKSUM ; 
 int /*<<< orphan*/  FUNC0 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ext4_extent_header*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct ext4_extent_header*) ; 

void
FUNC3(struct inode *ip, void *data)
{
	struct m_ext2fs *fs;
	struct ext4_extent_header *ehp;
	struct ext4_extent_tail *etp;

	fs = ip->i_e2fs;

	if (!FUNC0(fs, EXT2F_ROCOMPAT_METADATA_CKSUM))
		return;

	ehp = (struct ext4_extent_header *)data;
	etp = (struct ext4_extent_tail *)(((char *)data) +
	    FUNC1(ehp));

	etp->et_checksum = FUNC2(ip,
	    (struct ext4_extent_header *)data);
}