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
typedef  int u_long ;
struct vop_mkdir_args {int /*<<< orphan*/ * a_vpp; int /*<<< orphan*/  a_dvp; struct componentname* a_cnp; } ;
struct timespec {int dummy; } ;
struct msdosfsmount {int pm_bpcluster; int pm_rootdirblk; int /*<<< orphan*/  pm_devvp; } ;
struct direntry {int /*<<< orphan*/  deHighClust; int /*<<< orphan*/  deMTime; int /*<<< orphan*/  deMDate; int /*<<< orphan*/  deADate; int /*<<< orphan*/  deCHundredth; int /*<<< orphan*/  deCTime; int /*<<< orphan*/  deCDate; int /*<<< orphan*/  deStartCluster; } ;
struct denode {scalar_t__ de_StartCluster; scalar_t__ de_fndoffset; scalar_t__ de_FileSize; int de_flag; int de_CDate; int de_CTime; int de_ADate; int de_MDate; int de_MTime; scalar_t__ de_LowerCase; int /*<<< orphan*/  de_Attributes; int /*<<< orphan*/  de_Name; int /*<<< orphan*/  de_CHun; struct msdosfsmount* de_pmp; } ;
struct componentname {int cn_flags; } ;
struct buf {struct denode* b_data; } ;
typedef  int /*<<< orphan*/  ndirent ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_DIRECTORY ; 
 int /*<<< orphan*/  CLUST_EOFE ; 
 int /*<<< orphan*/  FUNC0 (struct denode*,struct timespec*,struct timespec*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (struct denode*) ; 
 int DE_ACCESS ; 
 int DE_CREATE ; 
 int DE_UPDATE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int ENOSPC ; 
 scalar_t__ FUNC3 (struct msdosfsmount*) ; 
 int HASBUF ; 
 scalar_t__ MSDOSFSROOT ; 
 struct denode* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct buf*) ; 
 int FUNC6 (struct buf*) ; 
 int FUNC7 (struct msdosfsmount*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct msdosfsmount*,int,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct msdosfsmount*,int) ; 
 int FUNC10 (struct denode*,struct denode*,struct denode**,struct componentname*) ; 
 int /*<<< orphan*/  dosdirtemplate ; 
 struct buf* FUNC11 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct denode*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (struct denode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int FUNC16 (struct denode*,struct componentname*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct timespec*) ; 

__attribute__((used)) static int
FUNC18(struct vop_mkdir_args *ap)
{
	struct componentname *cnp = ap->a_cnp;
	struct denode *dep;
	struct denode *pdep = FUNC4(ap->a_dvp);
	struct direntry *denp;
	struct msdosfsmount *pmp = pdep->de_pmp;
	struct buf *bp;
	u_long newcluster, pcl;
	int bn;
	int error;
	struct denode ndirent;
	struct timespec ts;

	/*
	 * If this is the root directory and there is no space left we
	 * can't do anything.  This is because the root directory can not
	 * change size.
	 */
	if (pdep->de_StartCluster == MSDOSFSROOT
	    && pdep->de_fndoffset >= pdep->de_FileSize) {
		error = ENOSPC;
		goto bad2;
	}

	/*
	 * Allocate a cluster to hold the about to be created directory.
	 */
	error = FUNC7(pmp, 0, 1, CLUST_EOFE, &newcluster, NULL);
	if (error)
		goto bad2;

	FUNC13(&ndirent, 0, sizeof(ndirent));
	ndirent.de_pmp = pmp;
	ndirent.de_flag = DE_ACCESS | DE_CREATE | DE_UPDATE;
	FUNC17(&ts);
	FUNC0(&ndirent, &ts, &ts, &ts);

	/*
	 * Now fill the cluster with the "." and ".." entries. And write
	 * the cluster to disk.  This way it is there for the parent
	 * directory to be pointing at if there were a crash.
	 */
	bn = FUNC9(pmp, newcluster);
	/* always succeeds */
	bp = FUNC11(pmp->pm_devvp, bn, pmp->pm_bpcluster, 0, 0, 0);
	FUNC13(bp->b_data, 0, pmp->pm_bpcluster);
	FUNC12(bp->b_data, &dosdirtemplate, sizeof dosdirtemplate);
	denp = (struct direntry *)bp->b_data;
	FUNC15(denp[0].deStartCluster, newcluster);
	FUNC15(denp[0].deCDate, ndirent.de_CDate);
	FUNC15(denp[0].deCTime, ndirent.de_CTime);
	denp[0].deCHundredth = ndirent.de_CHun;
	FUNC15(denp[0].deADate, ndirent.de_ADate);
	FUNC15(denp[0].deMDate, ndirent.de_MDate);
	FUNC15(denp[0].deMTime, ndirent.de_MTime);
	pcl = pdep->de_StartCluster;
	/*
	 * Although the root directory has a non-magic starting cluster
	 * number for FAT32, chkdsk and fsck_msdosfs still require
	 * references to it in dotdot entries to be magic.
	 */
	if (FUNC3(pmp) && pcl == pmp->pm_rootdirblk)
		pcl = MSDOSFSROOT;
	FUNC15(denp[1].deStartCluster, pcl);
	FUNC15(denp[1].deCDate, ndirent.de_CDate);
	FUNC15(denp[1].deCTime, ndirent.de_CTime);
	denp[1].deCHundredth = ndirent.de_CHun;
	FUNC15(denp[1].deADate, ndirent.de_ADate);
	FUNC15(denp[1].deMDate, ndirent.de_MDate);
	FUNC15(denp[1].deMTime, ndirent.de_MTime);
	if (FUNC3(pmp)) {
		FUNC15(denp[0].deHighClust, newcluster >> 16);
		FUNC15(denp[1].deHighClust, pcl >> 16);
	}

	if (FUNC2(ap->a_dvp))
		FUNC5(bp);
	else if ((error = FUNC6(bp)) != 0)
		goto bad;

	/*
	 * Now build up a directory entry pointing to the newly allocated
	 * cluster.  This will be written to an empty slot in the parent
	 * directory.
	 */
#ifdef DIAGNOSTIC
	if ((cnp->cn_flags & HASBUF) == 0)
		panic("msdosfs_mkdir: no name");
#endif
	error = FUNC16(pdep, cnp, ndirent.de_Name);
	if (error)
		goto bad;

	ndirent.de_Attributes = ATTR_DIRECTORY;
	ndirent.de_LowerCase = 0;
	ndirent.de_StartCluster = newcluster;
	ndirent.de_FileSize = 0;
	error = FUNC10(&ndirent, pdep, &dep, cnp);
	if (error)
		goto bad;
	*ap->a_vpp = FUNC1(dep);
	return (0);

bad:
	FUNC8(pmp, newcluster, NULL);
bad2:
	return (error);
}