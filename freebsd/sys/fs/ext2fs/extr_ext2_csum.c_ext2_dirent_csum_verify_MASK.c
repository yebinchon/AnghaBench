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
typedef  scalar_t__ uint32_t ;
struct inode {int dummy; } ;
struct ext2fs_direct_tail {scalar_t__ e2dt_checksum; } ;
struct ext2fs_direct_2 {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct inode*,struct ext2fs_direct_2*,int) ; 
 struct ext2fs_direct_tail* FUNC1 (struct inode*,struct ext2fs_direct_2*) ; 

int
FUNC2(struct inode *ip, struct ext2fs_direct_2 *ep)
{
	uint32_t calculated;
	struct ext2fs_direct_tail *tp;

	tp = FUNC1(ip, ep);
	if (tp == NULL)
		return (0);

	calculated = FUNC0(ip, ep, (char *)tp - (char *)ep);
	if (calculated != tp->e2dt_checksum)
		return (EIO);

	return (0);
}