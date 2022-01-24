#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
struct bufobj {int dummy; } ;
struct vnode {struct cdev* v_rdev; struct bufobj v_bufobj; } ;
struct TYPE_13__ {int /*<<< orphan*/  lb_num; } ;
struct TYPE_18__ {int /*<<< orphan*/  len; int /*<<< orphan*/  loc; } ;
struct anchor_vdp {int /*<<< orphan*/  len; TYPE_4__ loc; TYPE_9__ main_vds_ex; } ;
struct udf_mnt {int bsize; int bmask; int part_len; int part_start; struct anchor_vdp root_icb; scalar_t__ bshift; int /*<<< orphan*/ * im_l2d; struct bufobj* im_bo; struct g_consumer* im_cp; int /*<<< orphan*/ * im_d2l; struct vnode* im_devvp; struct cdev* im_dev; struct mount* im_mountp; } ;
struct desc_tag {int dummy; } ;
struct part_desc {int /*<<< orphan*/  start_loc; int /*<<< orphan*/  part_len; int /*<<< orphan*/  part_num; struct desc_tag tag; } ;
struct TYPE_14__ {int /*<<< orphan*/ * val; } ;
struct TYPE_15__ {TYPE_5__ f_fsid; } ;
struct mount {scalar_t__ mnt_iosize_max; int mnt_kern_flag; int /*<<< orphan*/  mnt_flag; TYPE_7__* mnt_vfc; TYPE_6__ mnt_stat; struct udf_mnt* mnt_data; } ;
struct long_ad {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  lb_num; int /*<<< orphan*/  part_num; } ;
struct TYPE_11__ {TYPE_1__ loc; } ;
struct TYPE_12__ {TYPE_2__ fsd_loc; } ;
struct logvol_desc {TYPE_3__ _lvd_use; int /*<<< orphan*/  lb_size; struct desc_tag tag; } ;
struct g_consumer {TYPE_8__* provider; } ;
struct fileset_desc {int /*<<< orphan*/  rootdir_icb; struct desc_tag tag; } ;
struct file_entry {struct desc_tag tag; } ;
struct cdev {scalar_t__ si_iosize_max; } ;
struct buf {int /*<<< orphan*/ * b_data; } ;
struct TYPE_17__ {int sectorsize; } ;
struct TYPE_16__ {int /*<<< orphan*/  vfc_typenum; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ MAXPHYS ; 
 int MNTK_EXTENDED_SHARED ; 
 int MNTK_LOOKUP_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 int /*<<< orphan*/  MNT_LOCAL ; 
 int M_NOWAIT ; 
 int /*<<< orphan*/  M_UDFMOUNT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  NOCRED ; 
 int FUNC2 (struct vnode*,int,int,struct buf**) ; 
 int /*<<< orphan*/  TAGID_ANCHOR ; 
 int /*<<< orphan*/  TAGID_FENTRY ; 
 int /*<<< orphan*/  TAGID_FSD ; 
 int /*<<< orphan*/  TAGID_LOGVOL ; 
 int /*<<< orphan*/  TAGID_PARTITION ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct anchor_vdp*,int) ; 
 int FUNC5 (struct vnode*,int,int,int /*<<< orphan*/ ,struct buf**) ; 
 int /*<<< orphan*/  FUNC6 (struct buf*) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC9 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC10 (struct cdev*) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct udf_mnt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct g_consumer*) ; 
 int FUNC16 (struct vnode*,struct g_consumer**,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 struct udf_mnt* FUNC19 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (char*,...) ; 
 int FUNC21 (struct desc_tag*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (struct udf_mnt*,struct logvol_desc*) ; 
 int FUNC23 (struct udf_mnt*,int,int,struct buf**) ; 

__attribute__((used)) static int
FUNC24(struct vnode *devvp, struct mount *mp)
{
	struct buf *bp = NULL;
	struct cdev *dev;
	struct anchor_vdp avdp;
	struct udf_mnt *udfmp = NULL;
	struct part_desc *pd;
	struct logvol_desc *lvd;
	struct fileset_desc *fsd;
	struct file_entry *root_fentry;
	uint32_t sector, size, mvds_start, mvds_end;
	uint32_t logical_secsize;
	uint32_t fsd_offset = 0;
	uint16_t part_num = 0, fsd_part = 0;
	int error = EINVAL;
	int logvol_found = 0, part_found = 0, fsd_found = 0;
	int bsize;
	struct g_consumer *cp;
	struct bufobj *bo;

	dev = devvp->v_rdev;
	FUNC9(dev);
	FUNC13();
	error = FUNC16(devvp, &cp, "udf", 0);
	FUNC14();
	FUNC3(devvp, 0);
	if (error)
		goto bail;

	bo = &devvp->v_bufobj;

	if (devvp->v_rdev->si_iosize_max != 0)
		mp->mnt_iosize_max = devvp->v_rdev->si_iosize_max;
	if (mp->mnt_iosize_max > MAXPHYS)
		mp->mnt_iosize_max = MAXPHYS;

	/* XXX: should be M_WAITOK */
	udfmp = FUNC19(sizeof(struct udf_mnt), M_UDFMOUNT,
	    M_NOWAIT | M_ZERO);
	if (udfmp == NULL) {
		FUNC20("Cannot allocate UDF mount struct\n");
		error = ENOMEM;
		goto bail;
	}

	mp->mnt_data = udfmp;
	mp->mnt_stat.f_fsid.val[0] = FUNC8(devvp->v_rdev);
	mp->mnt_stat.f_fsid.val[1] = mp->mnt_vfc->vfc_typenum;
	FUNC0(mp);
	mp->mnt_flag |= MNT_LOCAL;
	mp->mnt_kern_flag |= MNTK_LOOKUP_SHARED | MNTK_EXTENDED_SHARED;
	FUNC1(mp);
	udfmp->im_mountp = mp;
	udfmp->im_dev = dev;
	udfmp->im_devvp = devvp;
	udfmp->im_d2l = NULL;
	udfmp->im_cp = cp;
	udfmp->im_bo = bo;

#if 0
	udfmp->im_l2d = NULL;
#endif
	/*
	 * The UDF specification defines a logical sectorsize of 2048
	 * for DVD media.
	 */
	logical_secsize = 2048;

	if (((logical_secsize % cp->provider->sectorsize) != 0) ||
	    (logical_secsize < cp->provider->sectorsize)) {
		error = EINVAL;
		goto bail;
	}

	bsize = cp->provider->sectorsize;

	/* 
	 * Get the Anchor Volume Descriptor Pointer from sector 256.
	 * XXX Should also check sector n - 256, n, and 512.
	 */
	sector = 256;
	if ((error = FUNC5(devvp, sector * FUNC7(logical_secsize), bsize,
			   NOCRED, &bp)) != 0)
		goto bail;
	if ((error = FUNC21((struct desc_tag *)bp->b_data, TAGID_ANCHOR)))
		goto bail;

	FUNC4(bp->b_data, &avdp, sizeof(struct anchor_vdp));
	FUNC6(bp);
	bp = NULL;

	/*
	 * Extract the Partition Descriptor and Logical Volume Descriptor
	 * from the Volume Descriptor Sequence.
	 * XXX Should we care about the partition type right now?
	 * XXX What about multiple partitions?
	 */
	mvds_start = FUNC18(avdp.main_vds_ex.loc);
	mvds_end = mvds_start + (FUNC18(avdp.main_vds_ex.len) - 1) / bsize;
	for (sector = mvds_start; sector < mvds_end; sector++) {
		if ((error = FUNC5(devvp, sector * FUNC7(logical_secsize),
				   bsize, NOCRED, &bp)) != 0) {
			FUNC20("Can't read sector %d of VDS\n", sector);
			goto bail;
		}
		lvd = (struct logvol_desc *)bp->b_data;
		if (!FUNC21(&lvd->tag, TAGID_LOGVOL)) {
			udfmp->bsize = FUNC18(lvd->lb_size);
			udfmp->bmask = udfmp->bsize - 1;
			udfmp->bshift = FUNC11(udfmp->bsize) - 1;
			fsd_part = FUNC17(lvd->_lvd_use.fsd_loc.loc.part_num);
			fsd_offset = FUNC18(lvd->_lvd_use.fsd_loc.loc.lb_num);
			if (FUNC22(udfmp, lvd))
				break;
			logvol_found = 1;
		}
		pd = (struct part_desc *)bp->b_data;
		if (!FUNC21(&pd->tag, TAGID_PARTITION)) {
			part_found = 1;
			part_num = FUNC17(pd->part_num);
			udfmp->part_len = FUNC18(pd->part_len);
			udfmp->part_start = FUNC18(pd->start_loc);
		}

		FUNC6(bp); 
		bp = NULL;
		if ((part_found) && (logvol_found))
			break;
	}

	if (!part_found || !logvol_found) {
		error = EINVAL;
		goto bail;
	}

	if (fsd_part != part_num) {
		FUNC20("FSD does not lie within the partition!\n");
		error = EINVAL;
		goto bail;
	}


	/*
	 * Grab the Fileset Descriptor
	 * Thanks to Chuck McCrobie <mccrobie@cablespeed.com> for pointing
	 * me in the right direction here.
	 */
	sector = udfmp->part_start + fsd_offset;
	if ((error = FUNC2(devvp, sector, udfmp->bsize, &bp)) != 0) {
		FUNC20("Cannot read sector %d of FSD\n", sector);
		goto bail;
	}
	fsd = (struct fileset_desc *)bp->b_data;
	if (!FUNC21(&fsd->tag, TAGID_FSD)) {
		fsd_found = 1;
		FUNC4(&fsd->rootdir_icb, &udfmp->root_icb,
		    sizeof(struct long_ad));
	}

	FUNC6(bp);
	bp = NULL;

	if (!fsd_found) {
		FUNC20("Couldn't find the fsd\n");
		error = EINVAL;
		goto bail;
	}

	/*
	 * Find the file entry for the root directory.
	 */
	sector = FUNC18(udfmp->root_icb.loc.lb_num) + udfmp->part_start;
	size = FUNC18(udfmp->root_icb.len);
	if ((error = FUNC23(udfmp, sector, size, &bp)) != 0) {
		FUNC20("Cannot read sector %d\n", sector);
		goto bail;
	}

	root_fentry = (struct file_entry *)bp->b_data;
	if ((error = FUNC21(&root_fentry->tag, TAGID_FENTRY))) {
		FUNC20("Invalid root file entry!\n");
		goto bail;
	}

	FUNC6(bp);
	bp = NULL;

	return 0;

bail:
	if (udfmp != NULL)
		FUNC12(udfmp, M_UDFMOUNT);
	if (bp != NULL)
		FUNC6(bp);
	if (cp != NULL) {
		FUNC13();
		FUNC15(cp);
		FUNC14();
	}
	FUNC10(dev);
	return error;
}