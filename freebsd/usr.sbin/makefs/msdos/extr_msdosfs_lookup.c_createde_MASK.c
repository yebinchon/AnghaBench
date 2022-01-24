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
 int /*<<< orphan*/  DE_CLEAR ; 
 int /*<<< orphan*/  FUNC0 (struct direntry*,struct denode*) ; 
 scalar_t__ FUNC1 (struct msdosfsmount*) ; 
 scalar_t__ MSDOSFSROOT ; 
 scalar_t__ MSDOSFSROOT_OFS ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  NOCRED ; 
 struct direntry* FUNC3 (struct msdosfsmount*,struct buf*,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct buf**) ; 
 int /*<<< orphan*/  FUNC5 (struct buf*) ; 
 int FUNC6 (struct buf*) ; 
 scalar_t__ FUNC7 (struct msdosfsmount*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct msdosfsmount*,scalar_t__) ; 
 scalar_t__ FUNC9 (struct msdosfsmount*,scalar_t__) ; 
 int FUNC10 (struct msdosfsmount*,scalar_t__,scalar_t__,struct denode**) ; 
 int /*<<< orphan*/  FUNC11 (struct denode*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct denode*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct denode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/  const*,int,struct winentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

int
FUNC16(struct denode *dep, struct denode *ddep, struct denode **depp,
    struct componentname *cnp)
{
	int error;
	u_long dirclust, diroffset;
	struct direntry *ndep;
	struct msdosfsmount *pmp = ddep->de_pmp;
	struct buf *bp;
	daddr_t bn;
	int blsize;

	FUNC2(("createde(dep %p, ddep %p, depp %p, cnp %p)\n",
	    dep, ddep, depp, cnp));

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
		dirclust = FUNC7(pmp, diroffset);
		error = FUNC12(ddep, dirclust, 0, 0, DE_CLEAR);
		if (error) {
			(void)FUNC11(ddep, ddep->de_FileSize, 0, NULL);
			return error;
		}

		/*
		 * Update the size of the directory
		 */
		ddep->de_FileSize += FUNC9(pmp, dirclust);
	}

	/*
	 * We just read in the cluster with space.  Copy the new directory
	 * entry in.  Then write it to disk. NOTE:  DOS directories
	 * do not get smaller as clusters are emptied.
	 */
	error = FUNC13(ddep, FUNC8(pmp, ddep->de_fndoffset),
		       &bn, &dirclust, &blsize);
	if (error)
		return error;
	diroffset = ddep->de_fndoffset;
	if (dirclust != MSDOSFSROOT)
		diroffset &= pmp->pm_crbomask;
	if ((error = FUNC4(pmp->pm_devvp, bn, blsize, NOCRED, &bp)) != 0) {
		FUNC5(bp);
		return error;
	}
	ndep = FUNC3(pmp, bp, ddep->de_fndoffset);

	FUNC0(ndep, dep);

	/*
	 * Now write the Win95 long name
	 */
	if (ddep->de_fndcnt > 0) {
		uint8_t chksum = FUNC15(ndep->deName);
		const u_char *un = (const u_char *)cnp->cn_nameptr;
		int unlen = cnp->cn_namelen;
		int cnt = 1;

		while (--ddep->de_fndcnt >= 0) {
			if (!(ddep->de_fndoffset & pmp->pm_crbomask)) {
				if ((error = FUNC6(bp)) != 0)
					return error;

				ddep->de_fndoffset -= sizeof(struct direntry);
				error = FUNC13(ddep,
					       FUNC8(pmp,
							  ddep->de_fndoffset),
					       &bn, 0, &blsize);
				if (error)
					return error;

				error = FUNC4(pmp->pm_devvp, bn, blsize,
					      NOCRED, &bp);
				if (error) {
					FUNC5(bp);
					return error;
				}
				ndep = FUNC3(pmp, bp, ddep->de_fndoffset);
			} else {
				ndep--;
				ddep->de_fndoffset -= sizeof(struct direntry);
			}
			if (!FUNC14(un, unlen, (struct winentry *)ndep,
					cnt++, chksum))
				break;
		}
	}

	if ((error = FUNC6(bp)) != 0)
		return error;

	/*
	 * If they want us to return with the denode gotten.
	 */
	if (depp) {
		if (dep->de_Attributes & ATTR_DIRECTORY) {
			dirclust = dep->de_StartCluster;
			if (FUNC1(pmp) && dirclust == pmp->pm_rootdirblk)
				dirclust = MSDOSFSROOT;
			if (dirclust == MSDOSFSROOT)
				diroffset = MSDOSFSROOT_OFS;
			else
				diroffset = 0;
		}
		return FUNC10(pmp, dirclust, diroffset, depp);
	}

	return 0;
}