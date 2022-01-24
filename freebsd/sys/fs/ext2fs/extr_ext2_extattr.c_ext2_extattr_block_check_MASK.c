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
struct inode {int dummy; } ;
struct ext2fs_extattr_header {int dummy; } ;
struct buf {scalar_t__ b_bufsize; scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ext2fs_extattr_header*) ; 
 int FUNC1 (struct inode*,struct buf*) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC3(struct inode *ip, struct buf *bp)
{
	struct ext2fs_extattr_header *header;
	int error;

	header = (struct ext2fs_extattr_header *)bp->b_data;

	error = FUNC2(FUNC0(header),
	    bp->b_data + bp->b_bufsize);
	if (error)
		return (error);

	return (FUNC1(ip, bp));
}