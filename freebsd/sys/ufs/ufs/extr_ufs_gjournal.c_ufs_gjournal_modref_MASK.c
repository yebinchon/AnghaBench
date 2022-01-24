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
typedef  int /*<<< orphan*/  u_long ;
typedef  int u_int ;
struct vnode {scalar_t__ v_type; struct cdev* v_rdev; int /*<<< orphan*/  v_mount; } ;
struct ufsmount {struct vnode* um_devvp; struct fs* um_fs; } ;
struct inode {scalar_t__ i_number; } ;
struct fs {int fs_ipg; int fs_ncg; int fs_unrefs; int fs_fmod; int /*<<< orphan*/  fs_fsmnt; } ;
struct cg {int cg_unrefs; } ;
struct cdev {int dummy; } ;
struct buf {int dummy; } ;
typedef  scalar_t__ ino_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fs*,int) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (struct ufsmount*) ; 
 int /*<<< orphan*/  FUNC2 (struct ufsmount*) ; 
 scalar_t__ VCHR ; 
 struct ufsmount* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ VREG ; 
 struct inode* FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct buf*) ; 
 int /*<<< orphan*/  FUNC6 (struct cdev*) ; 
 int FUNC7 (struct fs*,struct vnode*,int,int /*<<< orphan*/ ,struct buf**,struct cg**) ; 
 int FUNC8 (struct fs*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct vnode *vp, int count)
{
	struct cg *cgp;
	struct buf *bp;
	int error, cg;
	struct cdev *dev;
	struct inode *ip;
	struct ufsmount *ump;
	struct fs *fs;
	struct vnode *devvp;
	ino_t ino;

	ip = FUNC4(vp);
	ump = FUNC3(vp->v_mount);
	fs = ump->um_fs;
	devvp = ump->um_devvp;
	ino = ip->i_number;

	cg = FUNC8(fs, ino);
	if (devvp->v_type == VREG) {
		/* devvp is a snapshot */
		dev = FUNC3(devvp->v_mount)->um_devvp->v_rdev;
	} else if (devvp->v_type == VCHR) {
		/* devvp is a normal disk device */
		dev = devvp->v_rdev;
	} else {
		bp = NULL;
		return (EIO);
	}
	if ((u_int)ino >= fs->fs_ipg * fs->fs_ncg)
		FUNC9("ufs_gjournal_modref: range: dev = %s, ino = %lu, fs = %s",
		    FUNC6(dev), (u_long)ino, fs->fs_fsmnt);
	if ((error = FUNC7(fs, devvp, cg, 0, &bp, &cgp)) != 0)
		return (error);
	cgp->cg_unrefs += count;
	FUNC1(ump);
	fs->fs_unrefs += count;
	fs->fs_fmod = 1;
	FUNC0(fs, cg);
	FUNC2(ump);
	FUNC5(bp);
	return (0);
}