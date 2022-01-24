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
typedef  int /*<<< orphan*/  u_char ;
struct fs {int fs_contigsumsize; int* fs_maxcluster; } ;
struct cg {int /*<<< orphan*/  cg_cgx; int /*<<< orphan*/  cg_nclusterblks; } ;
typedef  int int32_t ;

/* Variables and functions */
 int NBBY ; 
 int FUNC0 (struct fs*) ; 
 int /*<<< orphan*/ * FUNC1 (struct cg*,int const) ; 
 int* FUNC2 (struct cg*,int const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int const) ; 
 size_t FUNC6 (int /*<<< orphan*/ ,int const) ; 

void
FUNC7(struct fs *fs, struct cg *cgp, int32_t blkno, int cnt)
{
	int32_t *sump;
	int32_t *lp;
	u_char *freemapp, *mapp;
	int i, start, end, forw, back, map, bit;
	const int needswap = FUNC0(fs);

	if (fs->fs_contigsumsize <= 0)
		return;
	freemapp = FUNC1(cgp, needswap);
	sump = FUNC2(cgp, needswap);
	/*
	 * Allocate or clear the actual block.
	 */
	if (cnt > 0)
		FUNC4(freemapp, blkno);
	else
		FUNC3(freemapp, blkno);
	/*
	 * Find the size of the cluster going forward.
	 */
	start = blkno + 1;
	end = start + fs->fs_contigsumsize;
	if ((unsigned)end >= FUNC6(cgp->cg_nclusterblks, needswap))
		end = FUNC6(cgp->cg_nclusterblks, needswap);
	mapp = &freemapp[start / NBBY];
	map = *mapp++;
	bit = 1 << (start % NBBY);
	for (i = start; i < end; i++) {
		if ((map & bit) == 0)
			break;
		if ((i & (NBBY - 1)) != (NBBY - 1)) {
			bit <<= 1;
		} else {
			map = *mapp++;
			bit = 1;
		}
	}
	forw = i - start;
	/*
	 * Find the size of the cluster going backward.
	 */
	start = blkno - 1;
	end = start - fs->fs_contigsumsize;
	if (end < 0)
		end = -1;
	mapp = &freemapp[start / NBBY];
	map = *mapp--;
	bit = 1 << (start % NBBY);
	for (i = start; i > end; i--) {
		if ((map & bit) == 0)
			break;
		if ((i & (NBBY - 1)) != 0) {
			bit >>= 1;
		} else {
			map = *mapp--;
			bit = 1 << (NBBY - 1);
		}
	}
	back = start - i;
	/*
	 * Account for old cluster and the possibly new forward and
	 * back clusters.
	 */
	i = back + forw + 1;
	if (i > fs->fs_contigsumsize)
		i = fs->fs_contigsumsize;
	FUNC5(sump[i], cnt, needswap);
	if (back > 0)
		FUNC5(sump[back], -cnt, needswap);
	if (forw > 0)
		FUNC5(sump[forw], -cnt, needswap);

	/*
	 * Update cluster summary information.
	 */
	lp = &sump[fs->fs_contigsumsize];
	for (i = fs->fs_contigsumsize; i > 0; i--)
		if (FUNC6(*lp--, needswap) > 0)
			break;
	fs->fs_maxcluster[FUNC6(cgp->cg_cgx, needswap)] = i;
}