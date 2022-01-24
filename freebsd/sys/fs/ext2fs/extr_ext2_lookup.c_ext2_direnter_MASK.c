#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vnode {int dummy; } ;
struct inode {int i_flag; int i_size; int i_offset; scalar_t__ i_count; int i_endoff; TYPE_1__* i_e2fs; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_number; } ;
struct ext2fs_direct_2 {int /*<<< orphan*/  e2d_name; int /*<<< orphan*/  e2d_type; scalar_t__ e2d_namlen; int /*<<< orphan*/  e2d_ino; } ;
struct componentname {int cn_flags; int /*<<< orphan*/  cn_thread; int /*<<< orphan*/  cn_cred; scalar_t__ cn_namelen; int /*<<< orphan*/  cn_nameptr; } ;
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_3__ {int e2fs_bsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT2F_COMPAT_DIRHASHINDEX ; 
 int /*<<< orphan*/  EXT2F_INCOMPAT_FTYPE ; 
 int /*<<< orphan*/  EXT2_FT_UNKNOWN ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int IN_CHANGE ; 
 int IN_E3INDEX ; 
 int IN_UPDATE ; 
 int /*<<< orphan*/  IO_SYNC ; 
 int SAVENAME ; 
 struct inode* FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC6 (struct vnode*,struct ext2fs_direct_2*) ; 
 int FUNC7 (struct vnode*,struct ext2fs_direct_2*,struct componentname*) ; 
 int FUNC8 (struct vnode*,struct ext2fs_direct_2*,struct componentname*) ; 
 int FUNC9 (struct vnode*,struct componentname*,struct ext2fs_direct_2*) ; 
 scalar_t__ FUNC10 (struct inode*) ; 
 int FUNC11 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

int
FUNC13(struct inode *ip, struct vnode *dvp, struct componentname *cnp)
{
	struct inode *dp;
	struct ext2fs_direct_2 newdir;
	int DIRBLKSIZ = ip->i_e2fs->e2fs_bsize;
	int error;


#ifdef INVARIANTS
	if ((cnp->cn_flags & SAVENAME) == 0)
		panic("ext2_direnter: missing name");
#endif
	dp = FUNC4(dvp);
	newdir.e2d_ino = ip->i_number;
	newdir.e2d_namlen = cnp->cn_namelen;
	if (FUNC2(ip->i_e2fs,
	    EXT2F_INCOMPAT_FTYPE))
		newdir.e2d_type = FUNC0(FUNC3(ip->i_mode));
	else
		newdir.e2d_type = EXT2_FT_UNKNOWN;
	FUNC5(cnp->cn_nameptr, newdir.e2d_name, (unsigned)cnp->cn_namelen + 1);

	if (FUNC10(dp)) {
		error = FUNC8(dvp, &newdir, cnp);
		if (error) {
			dp->i_flag &= ~IN_E3INDEX;
			dp->i_flag |= IN_CHANGE | IN_UPDATE;
		}
		return (error);
	}

	if (FUNC1(ip->i_e2fs, EXT2F_COMPAT_DIRHASHINDEX) &&
	    !FUNC10(dp)) {
		if ((dp->i_size / DIRBLKSIZ) == 1 &&
		    dp->i_offset == DIRBLKSIZ) {
			/*
			 * Making indexed directory when one block is not
			 * enough to save all entries.
			 */
			return FUNC9(dvp, cnp, &newdir);
		}
	}

	/*
	 * If dp->i_count is 0, then namei could find no
	 * space in the directory. Here, dp->i_offset will
	 * be on a directory block boundary and we will write the
	 * new entry into a fresh block.
	 */
	if (dp->i_count == 0)
		return FUNC7(dvp, &newdir, cnp);

	error = FUNC6(dvp, &newdir);
	if (!error && dp->i_endoff && dp->i_endoff < dp->i_size)
		error = FUNC11(dvp, (off_t)dp->i_endoff, IO_SYNC,
		    cnp->cn_cred, cnp->cn_thread);
	return (error);
}