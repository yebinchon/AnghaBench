#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
typedef  int /*<<< orphan*/  u_int ;
struct bufobj {int /*<<< orphan*/  bo_ops; struct g_consumer* bo_private; } ;
struct vnode {struct bufobj v_bufobj; struct cdev* v_rdev; } ;
struct TYPE_5__ {int /*<<< orphan*/ * val; } ;
struct TYPE_6__ {TYPE_1__ f_fsid; } ;
struct mount {int mnt_iosize_max; int mnt_flag; int mnt_kern_flag; struct m_ext2fs* mnt_data; int /*<<< orphan*/  mnt_maxsymlinklen; TYPE_3__* mnt_vfc; TYPE_2__ mnt_stat; int /*<<< orphan*/  mnt_optnew; } ;
struct m_ext2fs {int e2fs_bsize; int e2fs_contigsumsize; int e2fs_gcount; int e2fs_ronly; int e2fs_wasvalid; int e2fs_state; int e2fs_fmod; struct m_ext2fs* um_e2fs; struct m_ext2fs* e2fs; struct m_ext2fs* e2fs_contigdirs; struct m_ext2fs* e2fs_gd; int /*<<< orphan*/  um_seqinc; scalar_t__ e2fs_log_bsize; scalar_t__ um_bptrtodb; int /*<<< orphan*/  um_nindir; struct g_consumer* um_cp; struct bufobj* um_bo; struct vnode* um_devvp; struct cdev* um_dev; struct mount* um_mountp; struct csum* e2fs_clustersum; int /*<<< orphan*/ * e2fs_maxcluster; } ;
struct g_consumer {TYPE_4__* provider; } ;
struct ext2mount {int e2fs_bsize; int e2fs_contigsumsize; int e2fs_gcount; int e2fs_ronly; int e2fs_wasvalid; int e2fs_state; int e2fs_fmod; struct ext2mount* um_e2fs; struct ext2mount* e2fs; struct ext2mount* e2fs_contigdirs; struct ext2mount* e2fs_gd; int /*<<< orphan*/  um_seqinc; scalar_t__ e2fs_log_bsize; scalar_t__ um_bptrtodb; int /*<<< orphan*/  um_nindir; struct g_consumer* um_cp; struct bufobj* um_bo; struct vnode* um_devvp; struct cdev* um_dev; struct mount* um_mountp; struct csum* e2fs_clustersum; int /*<<< orphan*/ * e2fs_maxcluster; } ;
struct ext2fs {int e2fs_state; } ;
struct csum {void* cs_sum; scalar_t__ cs_init; } ;
struct cdev {scalar_t__ si_iosize_max; } ;
struct buf {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_8__ {int sectorsize; } ;
struct TYPE_7__ {int /*<<< orphan*/  vfc_typenum; } ;

/* Variables and functions */
 int E2FS_ERRORS ; 
 int E2FS_ISCLEAN ; 
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct m_ext2fs*) ; 
 int /*<<< orphan*/  FUNC1 (struct m_ext2fs*) ; 
 int /*<<< orphan*/  EXT2_MAXCONTIG ; 
 int /*<<< orphan*/  EXT2_MAXSYMLINKLEN ; 
 int /*<<< orphan*/  FUNC2 (struct m_ext2fs*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int MAXPHYS ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MNTK_EXTENDED_SHARED ; 
 int MNTK_LOOKUP_SHARED ; 
 int MNTK_USES_BCACHE ; 
 int MNT_FORCE ; 
 int /*<<< orphan*/  FUNC5 (struct mount*) ; 
 int /*<<< orphan*/  FUNC6 (struct mount*) ; 
 int MNT_LOCAL ; 
 int /*<<< orphan*/  MNT_WAIT ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_EXT2MNT ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  NOCRED ; 
 int /*<<< orphan*/  SBLOCK ; 
 int SBSIZE ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ext2fs*,struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct vnode*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct buf**) ; 
 int /*<<< orphan*/  FUNC10 (struct buf*) ; 
 int /*<<< orphan*/  FUNC11 (struct cdev*) ; 
 scalar_t__ FUNC12 (struct ext2fs*,struct cdev*,int) ; 
 int FUNC13 (struct vnode*,struct m_ext2fs*,struct m_ext2fs*) ; 
 int /*<<< orphan*/  FUNC14 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  g_vfs_bufops ; 
 int /*<<< orphan*/  FUNC18 (struct g_consumer*) ; 
 int FUNC19 (struct vnode*,struct g_consumer**,char*,int) ; 
 void* FUNC20 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 int FUNC24 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC25(struct vnode *devvp, struct mount *mp)
{
	struct ext2mount *ump;
	struct buf *bp;
	struct m_ext2fs *fs;
	struct ext2fs *es;
	struct cdev *dev = devvp->v_rdev;
	struct g_consumer *cp;
	struct bufobj *bo;
	struct csum *sump;
	int error;
	int ronly;
	int i;
	u_long size;
	int32_t *lp;
	int32_t e2fs_maxcontig;

	ronly = FUNC24(mp->mnt_optnew, "ro", NULL, 0);
	/* XXX: use VOP_ACESS to check FS perms */
	FUNC16();
	error = FUNC19(devvp, &cp, "ext2fs", ronly ? 0 : 1);
	FUNC17();
	FUNC7(devvp, 0);
	if (error)
		return (error);

	/* XXX: should we check for some sectorsize or 512 instead? */
	if (((SBSIZE % cp->provider->sectorsize) != 0) ||
	    (SBSIZE < cp->provider->sectorsize)) {
		FUNC16();
		FUNC18(cp);
		FUNC17();
		return (EINVAL);
	}

	bo = &devvp->v_bufobj;
	bo->bo_private = cp;
	bo->bo_ops = g_vfs_bufops;
	if (devvp->v_rdev->si_iosize_max != 0)
		mp->mnt_iosize_max = devvp->v_rdev->si_iosize_max;
	if (mp->mnt_iosize_max > MAXPHYS)
		mp->mnt_iosize_max = MAXPHYS;

	bp = NULL;
	ump = NULL;
	if ((error = FUNC9(devvp, SBLOCK, SBSIZE, NOCRED, &bp)) != 0)
		goto out;
	es = (struct ext2fs *)bp->b_data;
	if (FUNC12(es, dev, ronly) != 0) {
		error = EINVAL;		/* XXX needs translation */
		goto out;
	}
	if ((es->e2fs_state & E2FS_ISCLEAN) == 0 ||
	    (es->e2fs_state & E2FS_ERRORS)) {
		if (ronly || (mp->mnt_flag & MNT_FORCE)) {
			FUNC23(
"WARNING: Filesystem was not properly dismounted\n");
		} else {
			FUNC23(
"WARNING: R/W mount denied.  Filesystem is not clean - run fsck\n");
			error = EPERM;
			goto out;
		}
	}
	ump = FUNC20(sizeof(*ump), M_EXT2MNT, M_WAITOK | M_ZERO);

	/*
	 * I don't know whether this is the right strategy. Note that
	 * we dynamically allocate both an m_ext2fs and an ext2fs
	 * while Linux keeps the super block in a locked buffer.
	 */
	ump->um_e2fs = FUNC20(sizeof(struct m_ext2fs),
	    M_EXT2MNT, M_WAITOK | M_ZERO);
	ump->um_e2fs->e2fs = FUNC20(sizeof(struct ext2fs),
	    M_EXT2MNT, M_WAITOK);
	FUNC22(FUNC2(ump), "EXT2FS", "EXT2FS Lock", MTX_DEF);
	FUNC8(es, ump->um_e2fs->e2fs, (u_int)sizeof(struct ext2fs));
	if ((error = FUNC13(devvp, ump->um_e2fs->e2fs, ump->um_e2fs)))
		goto out;

	/*
	 * Calculate the maximum contiguous blocks and size of cluster summary
	 * array.  In FFS this is done by newfs; however, the superblock
	 * in ext2fs doesn't have these variables, so we can calculate
	 * them here.
	 */
	e2fs_maxcontig = FUNC3(1, MAXPHYS / ump->um_e2fs->e2fs_bsize);
	ump->um_e2fs->e2fs_contigsumsize = FUNC4(e2fs_maxcontig, EXT2_MAXCONTIG);
	if (ump->um_e2fs->e2fs_contigsumsize > 0) {
		size = ump->um_e2fs->e2fs_gcount * sizeof(int32_t);
		ump->um_e2fs->e2fs_maxcluster = FUNC20(size, M_EXT2MNT, M_WAITOK);
		size = ump->um_e2fs->e2fs_gcount * sizeof(struct csum);
		ump->um_e2fs->e2fs_clustersum = FUNC20(size, M_EXT2MNT, M_WAITOK);
		lp = ump->um_e2fs->e2fs_maxcluster;
		sump = ump->um_e2fs->e2fs_clustersum;
		for (i = 0; i < ump->um_e2fs->e2fs_gcount; i++, sump++) {
			*lp++ = ump->um_e2fs->e2fs_contigsumsize;
			sump->cs_init = 0;
			sump->cs_sum = FUNC20((ump->um_e2fs->e2fs_contigsumsize + 1) *
			    sizeof(int32_t), M_EXT2MNT, M_WAITOK | M_ZERO);
		}
	}

	FUNC10(bp);
	bp = NULL;
	fs = ump->um_e2fs;
	fs->e2fs_ronly = ronly;	/* ronly is set according to mnt_flags */

	/*
	 * If the fs is not mounted read-only, make sure the super block is
	 * always written back on a sync().
	 */
	fs->e2fs_wasvalid = fs->e2fs->e2fs_state & E2FS_ISCLEAN ? 1 : 0;
	if (ronly == 0) {
		fs->e2fs_fmod = 1;	/* mark it modified */
		fs->e2fs->e2fs_state &= ~E2FS_ISCLEAN;	/* set fs invalid */
	}
	mp->mnt_data = ump;
	mp->mnt_stat.f_fsid.val[0] = FUNC11(dev);
	mp->mnt_stat.f_fsid.val[1] = mp->mnt_vfc->vfc_typenum;
	mp->mnt_maxsymlinklen = EXT2_MAXSYMLINKLEN;
	FUNC5(mp);
	mp->mnt_flag |= MNT_LOCAL;
	FUNC6(mp);
	ump->um_mountp = mp;
	ump->um_dev = dev;
	ump->um_devvp = devvp;
	ump->um_bo = &devvp->v_bufobj;
	ump->um_cp = cp;

	/*
	 * Setting those two parameters allowed us to use
	 * ufs_bmap w/o changse!
	 */
	ump->um_nindir = FUNC0(fs);
	ump->um_bptrtodb = fs->e2fs->e2fs_log_bsize + 1;
	ump->um_seqinc = FUNC1(fs);
	if (ronly == 0)
		FUNC14(ump, MNT_WAIT);
	/*
	 * Initialize filesystem stat information in mount struct.
	 */
	FUNC5(mp);
	mp->mnt_kern_flag |= MNTK_LOOKUP_SHARED | MNTK_EXTENDED_SHARED |
	    MNTK_USES_BCACHE;
	FUNC6(mp);
	return (0);
out:
	if (bp)
		FUNC10(bp);
	if (cp != NULL) {
		FUNC16();
		FUNC18(cp);
		FUNC17();
	}
	if (ump) {
		FUNC21(FUNC2(ump));
		FUNC15(ump->um_e2fs->e2fs_gd, M_EXT2MNT);
		FUNC15(ump->um_e2fs->e2fs_contigdirs, M_EXT2MNT);
		FUNC15(ump->um_e2fs->e2fs, M_EXT2MNT);
		FUNC15(ump->um_e2fs, M_EXT2MNT);
		FUNC15(ump, M_EXT2MNT);
		mp->mnt_data = NULL;
	}
	return (error);
}