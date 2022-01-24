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
typedef  scalar_t__ u_long ;
struct msdosfsmount {int /*<<< orphan*/  pm_devvp; } ;
struct direntry {scalar_t__* deName; int deAttributes; } ;
struct denode {struct msdosfsmount* de_pmp; } ;
struct buf {char* b_data; } ;
typedef  int /*<<< orphan*/  daddr_t ;

/* Variables and functions */
 int ATTR_VOLUME ; 
 int E2BIG ; 
 int /*<<< orphan*/  NOCRED ; 
 scalar_t__ SLOT_DELETED ; 
 scalar_t__ SLOT_EMPTY ; 
 scalar_t__ FUNC0 (scalar_t__*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct buf**) ; 
 int /*<<< orphan*/  FUNC2 (struct buf*) ; 
 int FUNC3 (struct denode*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,scalar_t__) ; 

int
FUNC5(struct denode *dep)
{
	int blsize;
	int error;
	u_long cn;
	daddr_t bn;
	struct buf *bp;
	struct msdosfsmount *pmp = dep->de_pmp;
	struct direntry *dentp;

	/*
	 * Since the filesize field in directory entries for a directory is
	 * zero, we just have to feel our way through the directory until
	 * we hit end of file.
	 */
	for (cn = 0;; cn++) {
		if ((error = FUNC3(dep, cn, &bn, 0, &blsize)) != 0) {
			if (error == E2BIG)
				return (1);	/* it's empty */
			return (0);
		}
		error = FUNC1(pmp->pm_devvp, bn, blsize, NOCRED, &bp);
		if (error) {
			return (0);
		}
		for (dentp = (struct direntry *)bp->b_data;
		     (char *)dentp < bp->b_data + blsize;
		     dentp++) {
			if (dentp->deName[0] != SLOT_DELETED &&
			    (dentp->deAttributes & ATTR_VOLUME) == 0) {
				/*
				 * In dos directories an entry whose name
				 * starts with SLOT_EMPTY (0) starts the
				 * beginning of the unused part of the
				 * directory, so we can just return that it
				 * is empty.
				 */
				if (dentp->deName[0] == SLOT_EMPTY) {
					FUNC2(bp);
					return (1);
				}
				/*
				 * Any names other than "." and ".." in a
				 * directory mean it is not empty.
				 */
				if (FUNC0(dentp->deName, ".          ", 11) &&
				    FUNC0(dentp->deName, "..         ", 11)) {
					FUNC2(bp);
#ifdef MSDOSFS_DEBUG
					printf("dosdirempty(): entry found %02x, %02x\n",
					    dentp->deName[0], dentp->deName[1]);
#endif
					return (0);	/* not empty */
				}
			}
		}
		FUNC2(bp);
	}
	/* NOTREACHED */
}