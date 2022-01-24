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
struct ext4_extent_path {TYPE_1__* ep_header; } ;
struct ext4_extent {int /*<<< orphan*/  e_blk; } ;
struct TYPE_2__ {scalar_t__ eh_ecount; scalar_t__ eh_max; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ext4_extent_path*) ; 
 int /*<<< orphan*/  FUNC1 (struct ext4_extent_path*) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ ,struct ext4_extent_path**) ; 
 int FUNC3 (struct inode*,struct ext4_extent_path*,struct ext4_extent*) ; 
 int FUNC4 (struct inode*) ; 
 int FUNC5 (struct inode*,struct ext4_extent_path*,struct ext4_extent*,int) ; 

__attribute__((used)) static int
FUNC6(struct inode *ip, struct ext4_extent_path *path,
    struct ext4_extent *newext)
{
	struct ext4_extent_path *curpath;
	int depth, i, error;

repeat:
	i = depth = FUNC4(ip);

	/* Look for free index entry int the tree */
	curpath = path + depth;
	while (i > 0 && !FUNC0(curpath)) {
		i--;
		curpath--;
	}

	/*
	 * We use already allocated block for index block,
	 * so subsequent data blocks should be contiguous.
	 */
	if (FUNC0(curpath)) {
		error = FUNC5(ip, path, newext, i);
		if (error)
			goto out;

		/* Refill path. */
		FUNC1(path);
		error = FUNC2(ip, newext->e_blk, &path);
		if (error)
			goto out;
	} else {
		/* Tree is full, do grow in depth. */
		error = FUNC3(ip, path, newext);
		if (error)
			goto out;

		/* Refill path. */
		FUNC1(path);
		error = FUNC2(ip, newext->e_blk, &path);
		if (error)
			goto out;

		/* Check and split tree if required. */
		depth = FUNC4(ip);
		if (path[depth].ep_header->eh_ecount ==
		    path[depth].ep_header->eh_max)
			goto repeat;
	}

out:
	return (error);
}