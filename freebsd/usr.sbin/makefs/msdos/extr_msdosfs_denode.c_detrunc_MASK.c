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
struct ucred {int dummy; } ;
struct msdosfsmount {int pm_crbomask; scalar_t__ pm_bpcluster; int /*<<< orphan*/  pm_devvp; } ;
struct denode {int de_Attributes; int de_FileSize; int de_StartCluster; int de_flag; int /*<<< orphan*/  de_diroffset; int /*<<< orphan*/  de_dirclust; int /*<<< orphan*/ * de_vnode; int /*<<< orphan*/  de_Name; struct msdosfsmount* de_pmp; } ;
struct buf {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  daddr_t ;

/* Variables and functions */
 int ATTR_DIRECTORY ; 
 int /*<<< orphan*/  CLUST_EOFE ; 
 int DE_MODIFIED ; 
 int DE_UPDATE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct msdosfsmount*) ; 
 int /*<<< orphan*/  FAT_GET_AND_SET ; 
 int /*<<< orphan*/  FC_LASTFC ; 
 int IO_SYNC ; 
 int /*<<< orphan*/  FUNC1 (struct msdosfsmount*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct buf*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct buf**) ; 
 int /*<<< orphan*/  FUNC5 (struct buf*) ; 
 int /*<<< orphan*/  FUNC6 (struct buf*) ; 
 int /*<<< orphan*/  FUNC7 (struct msdosfsmount*,int) ; 
 scalar_t__ FUNC8 (struct msdosfsmount*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct msdosfsmount*,int) ; 
 int FUNC10 (struct denode*,int,struct ucred*) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct msdosfsmount*,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct denode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct denode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct msdosfsmount*,int) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC16 (struct denode*,scalar_t__,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

int
FUNC17(struct denode *dep, u_long length, int flags, struct ucred *cred)
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

	FUNC2(("detrunc(): file %s, length %lu, flags %x\n",
	    dep->de_Name, length, flags));

	/*
	 * Disallow attempts to truncate the root directory since it is of
	 * fixed size.  That's just the way dos filesystems are.  We use
	 * the VROOT bit in the vnode because checking for the directory
	 * bit and a startcluster of 0 in the denode is not adequate to
	 * recognize the root directory at this point in a file or
	 * directory's life.
	 */
	if (dep->de_vnode != NULL && !FUNC0(pmp)) {
		FUNC2(("detrunc(): can't truncate root directory, "
		    "clust %ld, offset %ld\n",
		    dep->de_dirclust, dep->de_diroffset));

		return (EINVAL);
	}

	if (dep->de_FileSize < length)
		return FUNC10(dep, length, cred);

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
		error = FUNC16(dep, FUNC8(pmp, length) - 1, 0,
		    &eofentry, 0);
		if (error) {
			FUNC2(("detrunc(): pcbmap fails %d\n",
			    error));
			return (error);
		}
	}

	FUNC12(dep, FUNC8(pmp, length));

	/*
	 * If the new length is not a multiple of the cluster size then we
	 * must zero the tail end of the new last cluster in case it
	 * becomes part of the file again because of a seek.
	 */
	if ((boff = length & pmp->pm_crbomask) != 0) {
		if (isadir) {
			bn = FUNC7(pmp, eofentry);
			error = FUNC4(pmp->pm_devvp, bn, pmp->pm_bpcluster,
			    0, &bp);
			if (error) {
				FUNC5(bp);
				FUNC2(("detrunc(): bread fails %d\n",
				    error));

				return (error);
			}
			FUNC15(bp->b_data + boff, 0, pmp->pm_bpcluster - boff);
			if (flags & IO_SYNC)
				FUNC6(bp);
			else
				FUNC3(bp);
		}
	}

	/*
	 * Write out the updated directory entry.  Even if the update fails
	 * we free the trailing clusters.
	 */
	dep->de_FileSize = length;
	if (!isadir)
		dep->de_flag |= DE_UPDATE|DE_MODIFIED;
	FUNC2(("detrunc(): allerror %d, eofentry %lu\n",
	    allerror, eofentry));

	/*
	 * If we need to break the cluster chain for the file then do it
	 * now.
	 */
	if (eofentry != ~0) {
		error = FUNC11(FAT_GET_AND_SET, pmp, eofentry,
				 &chaintofree, CLUST_EOFE);
		if (error) {
			FUNC2(("detrunc(): fatentry errors %d\n",
			    error));
			return (error);
		}
		FUNC13(dep, FC_LASTFC, FUNC9(pmp, length - 1),
		    eofentry);
	}

	/*
	 * Now free the clusters removed from the file because of the
	 * truncation.
	 */
	if (chaintofree != 0 && !FUNC1(pmp, chaintofree))
		FUNC14(pmp, chaintofree);

	return (allerror);
}