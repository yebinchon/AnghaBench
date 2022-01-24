#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct ucred {int dummy; } ;
struct msdosfsmount {int pm_crbomask; scalar_t__ pm_bpcluster; TYPE_1__* pm_devvp; } ;
struct denode {int de_Attributes; char* de_Name; int de_FileSize; int de_StartCluster; int de_flag; int /*<<< orphan*/  de_diroffset; int /*<<< orphan*/  de_dirclust; struct msdosfsmount* de_pmp; } ;
struct buf {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  daddr_t ;
struct TYPE_6__ {int v_vflag; } ;

/* Variables and functions */
 int ATTR_DIRECTORY ; 
 int /*<<< orphan*/  CLUST_EOFE ; 
 TYPE_1__* FUNC0 (struct denode*) ; 
 int DE_MODIFIED ; 
 int DE_UPDATE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (struct msdosfsmount*) ; 
 int /*<<< orphan*/  FAT_GET_AND_SET ; 
 int /*<<< orphan*/  FC_LASTFC ; 
 int IO_SYNC ; 
 int /*<<< orphan*/  FUNC3 (struct msdosfsmount*,int) ; 
 struct ucred* NOCRED ; 
 int VV_ROOT ; 
 int /*<<< orphan*/  FUNC4 (struct buf*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,struct ucred*,struct buf**) ; 
 int /*<<< orphan*/  FUNC6 (struct buf*) ; 
 int /*<<< orphan*/  FUNC7 (struct msdosfsmount*,int) ; 
 scalar_t__ FUNC8 (struct msdosfsmount*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct msdosfsmount*,int) ; 
 int FUNC10 (struct denode*,int,struct ucred*) ; 
 int FUNC11 (struct denode*,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,struct msdosfsmount*,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct denode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct denode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct msdosfsmount*,int) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC17 (struct denode*,scalar_t__,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,...) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,int) ; 
 int FUNC20 (TYPE_1__*,int,scalar_t__) ; 

int
FUNC21(struct denode *dep, u_long length, int flags, struct ucred *cred)
{
	int error;
	int allerror;
	u_long eofentry;
	u_long chaintofree;
	daddr_t bn;
	int boff;
	int isadir = dep->de_Attributes & ATTR_DIRECTORY;
	struct buf *bp;
	struct msdosfsmount *pmp = dep->de_pmp;

#ifdef MSDOSFS_DEBUG
	printf("detrunc(): file %s, length %lu, flags %x\n", dep->de_Name, length, flags);
#endif

	/*
	 * Disallow attempts to truncate the root directory since it is of
	 * fixed size.  That's just the way dos filesystems are.  We use
	 * the VROOT bit in the vnode because checking for the directory
	 * bit and a startcluster of 0 in the denode is not adequate to
	 * recognize the root directory at this point in a file or
	 * directory's life.
	 */
	if ((FUNC0(dep)->v_vflag & VV_ROOT) && !FUNC2(pmp)) {
#ifdef MSDOSFS_DEBUG
		printf("detrunc(): can't truncate root directory, clust %ld, offset %ld\n",
		    dep->de_dirclust, dep->de_diroffset);
#endif
		return (EINVAL);
	}

	if (dep->de_FileSize < length) {
		FUNC19(FUNC0(dep), length);
		return FUNC10(dep, length, cred);
	}

	/*
	 * If the desired length is 0 then remember the starting cluster of
	 * the file and set the StartCluster field in the directory entry
	 * to 0.  If the desired length is not zero, then get the number of
	 * the last cluster in the shortened file.  Then get the number of
	 * the first cluster in the part of the file that is to be freed.
	 * Then set the next cluster pointer in the last cluster of the
	 * file to CLUST_EOFE.
	 */
	if (length == 0) {
		chaintofree = dep->de_StartCluster;
		dep->de_StartCluster = 0;
		eofentry = ~0;
	} else {
		error = FUNC17(dep, FUNC8(pmp, length) - 1, 0,
			       &eofentry, 0);
		if (error) {
#ifdef MSDOSFS_DEBUG
			printf("detrunc(): pcbmap fails %d\n", error);
#endif
			return (error);
		}
	}

	FUNC13(dep, FUNC8(pmp, length));

	/*
	 * If the new length is not a multiple of the cluster size then we
	 * must zero the tail end of the new last cluster in case it
	 * becomes part of the file again because of a seek.
	 */
	if ((boff = length & pmp->pm_crbomask) != 0) {
		if (isadir) {
			bn = FUNC7(pmp, eofentry);
			error = FUNC5(pmp->pm_devvp, bn, pmp->pm_bpcluster,
			    NOCRED, &bp);
		} else {
			error = FUNC5(FUNC0(dep), FUNC9(pmp, length),
			    pmp->pm_bpcluster, cred, &bp);
		}
		if (error) {
#ifdef MSDOSFS_DEBUG
			printf("detrunc(): bread fails %d\n", error);
#endif
			return (error);
		}
		FUNC16(bp->b_data + boff, 0, pmp->pm_bpcluster - boff);
		if ((flags & IO_SYNC) != 0)
			FUNC6(bp);
		else
			FUNC4(bp);
	}

	/*
	 * Write out the updated directory entry.  Even if the update fails
	 * we free the trailing clusters.
	 */
	dep->de_FileSize = length;
	if (!isadir)
		dep->de_flag |= DE_UPDATE | DE_MODIFIED;
	allerror = FUNC20(FUNC0(dep), length, pmp->pm_bpcluster);
#ifdef MSDOSFS_DEBUG
	if (allerror)
		printf("detrunc(): vtruncbuf error %d\n", allerror);
#endif
	error = FUNC11(dep, !FUNC1((FUNC0(dep))));
	if (error != 0 && allerror == 0)
		allerror = error;
#ifdef MSDOSFS_DEBUG
	printf("detrunc(): allerror %d, eofentry %lu\n",
	       allerror, eofentry);
#endif

	/*
	 * If we need to break the cluster chain for the file then do it
	 * now.
	 */
	if (eofentry != ~0) {
		error = FUNC12(FAT_GET_AND_SET, pmp, eofentry,
				 &chaintofree, CLUST_EOFE);
		if (error) {
#ifdef MSDOSFS_DEBUG
			printf("detrunc(): fatentry errors %d\n", error);
#endif
			return (error);
		}
		FUNC14(dep, FC_LASTFC, FUNC9(pmp, length - 1),
			    eofentry);
	}

	/*
	 * Now free the clusters removed from the file because of the
	 * truncation.
	 */
	if (chaintofree != 0 && !FUNC3(pmp, chaintofree))
		FUNC15(pmp, chaintofree);

	return (allerror);
}