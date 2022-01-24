#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct ext4_extent_path {TYPE_1__* ep_header; int /*<<< orphan*/  ep_index; } ;
typedef  int /*<<< orphan*/  e4fs_daddr_t ;
struct TYPE_2__ {scalar_t__ eh_ecount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct ext4_extent_path*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct inode *ip, struct ext4_extent_path *path)
{
	e4fs_daddr_t leaf;

	/* Free index block. */
	path--;
	leaf = FUNC3(path->ep_index);
	FUNC0(path->ep_header->eh_ecount != 0,
	    ("ext4_ext_rm_index: bad ecount"));
	path->ep_header->eh_ecount--;
	FUNC2(ip, path);
	FUNC1(ip, leaf, 1, 0);
	return (0);
}