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
typedef  int /*<<< orphan*/  uint64_t ;
struct ext4_extent_path {int /*<<< orphan*/  ep_blk; int /*<<< orphan*/ * ep_data; } ;
struct buf {int /*<<< orphan*/  b_bufsize; int /*<<< orphan*/  b_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_EXT2EXTENTS ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct ext4_extent_path *path,
    struct buf *bp, uint64_t blk)
{

	FUNC0(path->ep_data == NULL,
	    ("ext4_ext_fill_path_bdata: bad ep_data"));

	path->ep_data = FUNC1(bp->b_bufsize, M_EXT2EXTENTS, M_WAITOK);
	if (!path->ep_data)
		return (ENOMEM);

	FUNC2(path->ep_data, bp->b_data, bp->b_bufsize);
	path->ep_blk = blk;

	return (0);
}