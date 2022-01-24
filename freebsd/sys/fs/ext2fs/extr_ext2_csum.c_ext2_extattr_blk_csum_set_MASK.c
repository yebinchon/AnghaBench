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
struct inode {int /*<<< orphan*/  i_facl; int /*<<< orphan*/  i_e2fs; } ;
struct ext2fs_extattr_header {int /*<<< orphan*/  h_checksum; } ;
struct buf {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT2F_ROCOMPAT_METADATA_CKSUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ,struct ext2fs_extattr_header*) ; 

void
FUNC2(struct inode *ip, struct buf *bp)
{
	struct ext2fs_extattr_header *header;

	if (!FUNC0(ip->i_e2fs, EXT2F_ROCOMPAT_METADATA_CKSUM))
		return;

	header = (struct ext2fs_extattr_header *)bp->b_data;
	header->h_checksum = FUNC1(ip, ip->i_facl, header);
}