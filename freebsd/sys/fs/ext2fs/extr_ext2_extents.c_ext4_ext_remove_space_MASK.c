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
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct inode {scalar_t__ i_db; } ;
struct ext4_extent_path {int ep_depth; scalar_t__ index_count; struct ext4_extent_header* ep_header; struct ext4_extent_path* ep_data; scalar_t__ ep_index; } ;
struct ext4_extent_header {scalar_t__ eh_ecount; } ;
struct buf {int dummy; } ;
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_2__ {int /*<<< orphan*/  eh_max; scalar_t__ eh_depth; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct ext4_extent_header*) ; 
 int /*<<< orphan*/  M_EXT2EXTENTS ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (struct buf*) ; 
 int FUNC2 (struct inode*,struct ext4_extent_header*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct ext4_extent_path*) ; 
 int /*<<< orphan*/  FUNC4 (struct ext4_extent_path*) ; 
 int /*<<< orphan*/  FUNC5 (struct ext4_extent_path*,struct buf*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int FUNC8 (struct inode*) ; 
 scalar_t__ FUNC9 (struct ext4_extent_path*) ; 
 int FUNC10 (struct inode*,struct ext4_extent_path*) ; 
 int FUNC11 (struct inode*,struct ext4_extent_path*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 struct buf* FUNC13 (struct inode*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ext4_extent_path*,int /*<<< orphan*/ ) ; 
 struct ext4_extent_path* FUNC15 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct ext4_extent_path*,int /*<<< orphan*/ ,int) ; 

int
FUNC17(struct inode *ip, off_t length, int flags,
    struct ucred *cred, struct thread *td)
{
	struct buf *bp;
	struct ext4_extent_header *ehp;
	struct ext4_extent_path *path;
	int depth;
	int i, error;

	ehp = (struct ext4_extent_header *)ip->i_db;
	depth = FUNC8(ip);

	error = FUNC2(ip, ehp);
	if(error)
		return (error);

	path = FUNC15(sizeof(struct ext4_extent_path) * (depth + 1),
	    M_EXT2EXTENTS, M_WAITOK | M_ZERO);
	if (!path)
		return (ENOMEM);

	path[0].ep_header = ehp;
	path[0].ep_depth = depth;
	i = 0;
	while (error == 0 && i >= 0) {
		if (i == depth) {
			/* This is leaf. */
			error = FUNC11(ip, path, length);
			if (error)
				break;
			FUNC14(path[i].ep_data, M_EXT2EXTENTS);
			path[i].ep_data = NULL;
			i--;
			continue;
		}

		/* This is index. */
		if (!path[i].ep_header)
			path[i].ep_header =
			    (struct ext4_extent_header *)path[i].ep_data;

		if (!path[i].ep_index) {
			/* This level hasn't touched yet. */
			path[i].ep_index = FUNC0(path[i].ep_header);
			path[i].index_count = path[i].ep_header->eh_ecount + 1;
		} else {
			/* We've already was here, see at next index. */
			path[i].ep_index--;
		}

		if (FUNC9(path + i)) {
			FUNC16(path + i + 1, 0, sizeof(*path));
			bp = FUNC13(ip,
			    FUNC7(path[i].ep_index),
			    path[0].ep_depth - (i + 1), 0);
			if (!bp) {
				error = EIO;
				break;
			}

			FUNC5(&path[i+1], bp,
			    FUNC7(path[i].ep_index));
			FUNC1(bp);
			path[i].index_count = path[i].ep_header->eh_ecount;
			i++;
		} else {
			if (path[i].ep_header->eh_ecount == 0 && i > 0) {
				/* Index is empty, remove it. */
				error = FUNC10(ip, path + i);
			}
			FUNC14(path[i].ep_data, M_EXT2EXTENTS);
			path[i].ep_data = NULL;
			i--;
		}
	}

	if (path->ep_header->eh_ecount == 0) {
		/*
		 * Truncate the tree to zero.
		 */
		 FUNC6(ip)->eh_depth = 0;
		 FUNC6(ip)->eh_max = FUNC12(ip);
		 FUNC3(ip, path);
	}

	FUNC4(path);
	FUNC14(path, M_EXT2EXTENTS);

	return (error);
}