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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ u_long ;
typedef  int /*<<< orphan*/  u_char ;
struct winentry {int dummy; } ;
struct msdosfsmount {scalar_t__ pm_crbomask; scalar_t__ pm_rootdirblk; int /*<<< orphan*/  pm_devvp; } ;
struct direntry {int /*<<< orphan*/  deName; } ;
struct denode {scalar_t__ de_fndoffset; scalar_t__ de_FileSize; scalar_t__ de_fndcnt; int de_Attributes; scalar_t__ de_StartCluster; struct msdosfsmount* de_pmp; } ;
struct componentname {int cn_namelen; scalar_t__ cn_nameptr; } ;
struct buf {int dummy; } ;
typedef  int /*<<< orphan*/  daddr_t ;

/* Variables and functions */
 int ATTR_DIRECTORY ; 
 int /*<<< orphan*/  FUNC0 (struct denode*) ; 
 int /*<<< orphan*/  DE_CLEAR ; 
 int /*<<< orphan*/  FUNC1 (struct direntry*,struct denode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct msdosfsmount*) ; 
 scalar_t__ MSDOSFSROOT ; 
 scalar_t__ MSDOSFSROOT_OFS ; 
 int /*<<< orphan*/  NOCRED ; 
 int /*<<< orphan*/  FUNC4 (struct buf*) ; 
 struct direntry* FUNC5 (struct msdosfsmount*,struct buf*,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct buf**) ; 
 int /*<<< orphan*/  FUNC7 (struct buf*) ; 
 int FUNC8 (struct buf*) ; 
 scalar_t__ FUNC9 (struct msdosfsmount*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct msdosfsmount*,scalar_t__) ; 
 scalar_t__ FUNC11 (struct msdosfsmount*,scalar_t__) ; 
 int FUNC12 (struct msdosfsmount*,scalar_t__,scalar_t__,struct denode**) ; 
 int /*<<< orphan*/  FUNC13 (struct denode*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct denode*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct denode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC16 (char*,struct denode*,struct denode*,struct denode**,struct componentname*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/  const*,int,struct winentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct msdosfsmount*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

int
FUNC19(struct denode *dep, struct denode *ddep, struct denode **depp,
    struct componentname *cnp)
{
	int error;
	u_long dirclust, diroffset;
	struct direntry *ndep;
	struct msdosfsmount *pmp = ddep->de_pmp;
	struct buf *bp;
	daddr_t bn;
	int blsize;

#ifdef MSDOSFS_DEBUG
	printf("createde(dep %p, ddep %p, depp %p, cnp %p)\n",
	    dep, ddep, depp, cnp);
#endif

	/*
	 * If no space left in the directory then allocate another cluster
	 * and chain it onto the end of the file.  There is one exception
	 * to this.  That is, if the root directory has no more space it
	 * can NOT be expanded.  extendfile() checks for and fails attempts
	 * to extend the root directory.  We just return an error in that
	 * case.
	 */
	if (ddep->de_fndoffset >= ddep->de_FileSize) {
		diroffset = ddep->de_fndoffset + sizeof(struct direntry)
		    - ddep->de_FileSize;
		dirclust = FUNC9(pmp, diroffset);
		error = FUNC14(ddep, dirclust, 0, 0, DE_CLEAR);
		if (error) {
			(void)FUNC13(ddep, ddep->de_FileSize, 0, NOCRED);
			return error;
		}

		/*
		 * Update the size of the directory
		 */
		ddep->de_FileSize += FUNC11(pmp, dirclust);
	}

	/*
	 * We just read in the cluster with space.  Copy the new directory
	 * entry in.  Then write it to disk. NOTE:  DOS directories
	 * do not get smaller as clusters are emptied.
	 */
	error = FUNC15(ddep, FUNC10(pmp, ddep->de_fndoffset),
		       &bn, &dirclust, &blsize);
	if (error)
		return error;
	diroffset = ddep->de_fndoffset;
	if (dirclust != MSDOSFSROOT)
		diroffset &= pmp->pm_crbomask;
	if ((error = FUNC6(pmp->pm_devvp, bn, blsize, NOCRED, &bp)) != 0) {
		FUNC7(bp);
		return error;
	}
	ndep = FUNC5(pmp, bp, ddep->de_fndoffset);

	FUNC1(ndep, dep);

	/*
	 * Now write the Win95 long name
	 */
	if (ddep->de_fndcnt > 0) {
		uint8_t chksum = FUNC18(ndep->deName);
		const u_char *un = (const u_char *)cnp->cn_nameptr;
		int unlen = cnp->cn_namelen;
		int cnt = 1;

		while (--ddep->de_fndcnt >= 0) {
			if (!(ddep->de_fndoffset & pmp->pm_crbomask)) {
				if (FUNC2(FUNC0(ddep)))
					FUNC4(bp);
				else if ((error = FUNC8(bp)) != 0)
					return error;

				ddep->de_fndoffset -= sizeof(struct direntry);
				error = FUNC15(ddep,
					       FUNC10(pmp,
							  ddep->de_fndoffset),
					       &bn, 0, &blsize);
				if (error)
					return error;

				error = FUNC6(pmp->pm_devvp, bn, blsize,
					      NOCRED, &bp);
				if (error) {
					return error;
				}
				ndep = FUNC5(pmp, bp, ddep->de_fndoffset);
			} else {
				ndep--;
				ddep->de_fndoffset -= sizeof(struct direntry);
			}
			if (!FUNC17(un, unlen, (struct winentry *)ndep,
					cnt++, chksum, pmp))
				break;
		}
	}

	if (FUNC2(FUNC0(ddep)))
		FUNC4(bp);
	else if ((error = FUNC8(bp)) != 0)
		return error;

	/*
	 * If they want us to return with the denode gotten.
	 */
	if (depp) {
		if (dep->de_Attributes & ATTR_DIRECTORY) {
			dirclust = dep->de_StartCluster;
			if (FUNC3(pmp) && dirclust == pmp->pm_rootdirblk)
				dirclust = MSDOSFSROOT;
			if (dirclust == MSDOSFSROOT)
				diroffset = MSDOSFSROOT_OFS;
			else
				diroffset = 0;
		}
		return FUNC12(pmp, dirclust, diroffset, depp);
	}

	return 0;
}