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
struct TYPE_2__ {int /*<<< orphan*/  ec_type; } ;
struct inode {TYPE_1__ i_ext_cache; } ;
struct ext4_extent_path {scalar_t__ ep_depth; struct ext4_extent* ep_ext; struct ext4_extent_header* ep_header; } ;
struct ext4_extent_header {scalar_t__ eh_ecount; scalar_t__ eh_max; } ;
struct ext4_extent {scalar_t__ e_len; scalar_t__ e_blk; int /*<<< orphan*/  e_start_hi; int /*<<< orphan*/  e_start_lo; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  EXT4_EXT_CACHE_NO ; 
 int EXT4_MAX_BLOCKS ; 
 struct ext4_extent* FUNC0 (struct ext4_extent_header*) ; 
 struct ext4_extent* FUNC1 (struct ext4_extent_header*) ; 
 struct ext4_extent* FUNC2 (struct ext4_extent_header*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  M_EXT2EXTENTS ; 
 scalar_t__ FUNC4 (struct ext4_extent*,struct ext4_extent*) ; 
 int FUNC5 (struct inode*,struct ext4_extent_path*) ; 
 int FUNC6 (struct inode*,struct ext4_extent_path*,struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct ext4_extent_path*) ; 
 int /*<<< orphan*/  FUNC8 (struct ext4_extent_path*) ; 
 int FUNC9 (struct inode*,int,struct ext4_extent_path**) ; 
 int FUNC10 (struct inode*) ; 
 int FUNC11 (struct inode*,struct ext4_extent_path*) ; 
 int /*<<< orphan*/  FUNC12 (struct ext4_extent_path*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ext4_extent*,struct ext4_extent*,int) ; 

__attribute__((used)) static int
FUNC14(struct inode *ip, struct ext4_extent_path *path,
    struct ext4_extent *newext)
{
	struct ext4_extent_header * eh;
	struct ext4_extent *ex, *nex, *nearex;
	struct ext4_extent_path *npath;
	int depth, len, error, next;

	depth = FUNC10(ip);
	ex = path[depth].ep_ext;
	npath = NULL;

	if (newext->e_len == 0 || path[depth].ep_header == NULL)
		return (EINVAL);

	/* Insert block into found extent. */
	if (ex && FUNC4(ex, newext)) {
		ex->e_len = ex->e_len + newext->e_len;
		eh = path[depth].ep_header;
		nearex = ex;
		goto merge;
	}

repeat:
	depth = FUNC10(ip);
	eh = path[depth].ep_header;
	if (eh->eh_ecount < eh->eh_max)
		goto has_space;

	/* Try next leaf */
	nex = FUNC1(eh);
	next = FUNC11(ip, path);
	if (newext->e_blk > nex->e_blk && next != EXT4_MAX_BLOCKS) {
		FUNC3(npath == NULL,
		    ("ext4_ext_insert_extent: bad path"));

		error = FUNC9(ip, next, &npath);
		if (error)
			goto cleanup;

		if (npath->ep_depth != path->ep_depth) {
			error = EIO;
			goto cleanup;
		}

		eh = npath[depth].ep_header;
		if (eh->eh_ecount < eh->eh_max) {
			path = npath;
			goto repeat;
		}
	}

	/*
	 * There is no free space in the found leaf,
	 * try to add a new leaf to the tree.
	 */
	error = FUNC6(ip, path, newext);
	if (error)
		goto cleanup;

	depth = FUNC10(ip);
	eh = path[depth].ep_header;

has_space:
	nearex = path[depth].ep_ext;
	if (!nearex) {
		/* Create new extent in the leaf. */
		path[depth].ep_ext = FUNC0(eh);
	} else if (newext->e_blk > nearex->e_blk) {
		if (nearex != FUNC1(eh)) {
			len = FUNC2(eh) - nearex;
			len = (len - 1) * sizeof(struct ext4_extent);
			len = len < 0 ? 0 : len;
			FUNC13(nearex + 2, nearex + 1, len);
		}
		path[depth].ep_ext = nearex + 1;
	} else {
		len = (FUNC2(eh) - nearex) * sizeof(struct ext4_extent);
		len = len < 0 ? 0 : len;
		FUNC13(nearex + 1, nearex, len);
		path[depth].ep_ext = nearex;
	}

	eh->eh_ecount = eh->eh_ecount + 1;
	nearex = path[depth].ep_ext;
	nearex->e_blk = newext->e_blk;
	nearex->e_start_lo = newext->e_start_lo;
	nearex->e_start_hi = newext->e_start_hi;
	nearex->e_len = newext->e_len;

merge:
	/* Try to merge extents to the right. */
	while (nearex < FUNC1(eh)) {
		if (!FUNC4(nearex, nearex + 1))
			break;

		/* Merge with next extent. */
		nearex->e_len = nearex->e_len + nearex[1].e_len;
		if (nearex + 1 < FUNC1(eh)) {
			len = (FUNC1(eh) - nearex - 1) *
			    sizeof(struct ext4_extent);
			FUNC13(nearex + 1, nearex + 2, len);
		}

		eh->eh_ecount = eh->eh_ecount - 1;
		FUNC3(eh->eh_ecount != 0,
		    ("ext4_ext_insert_extent: bad ecount"));
	}

	/*
	 * Try to merge extents to the left,
	 * start from inexes correction.
	 */
	error = FUNC5(ip, path);
	if (error)
		goto cleanup;

	FUNC7(ip, path + depth);

cleanup:
	if (npath) {
		FUNC8(npath);
		FUNC12(npath, M_EXT2EXTENTS);
	}

	ip->i_ext_cache.ec_type = EXT4_EXT_CACHE_NO;
	return (error);
}