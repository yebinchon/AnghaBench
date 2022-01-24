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
typedef  unsigned int u_int ;
struct msdosfsmount {int pm_nxtfree; int pm_maxcluster; unsigned int* pm_inusemap; } ;

/* Variables and functions */
 int ENOSPC ; 
 unsigned int FULL_RUN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int N_INUSEBITS ; 
 int FUNC1 (struct msdosfsmount*,int,int,int,int*,int*) ; 
 int FUNC2 (struct msdosfsmount*,int,int) ; 
 int FUNC3 (unsigned int) ; 

__attribute__((used)) static int
FUNC4(struct msdosfsmount *pmp, u_long start, u_long count,
    u_long fillwith, u_long *retcluster, u_long *got)
{
	u_long idx;
	u_long len, newst, foundl, cn, l;
	u_long foundcn = 0; /* XXX: foundcn could be used unititialized */
	u_int map;

	FUNC0(("clusteralloc(): find %lu clusters\n", count));

	if (start) {
		if ((len = FUNC2(pmp, start, count)) >= count)
			return (FUNC1(pmp, start, count, fillwith, retcluster, got));
	} else
		len = 0;

	newst = pmp->pm_nxtfree;
	foundl = 0;

	for (cn = newst; cn <= pmp->pm_maxcluster;) {
		idx = cn / N_INUSEBITS;
		map = pmp->pm_inusemap[idx];
		map |= (1U << (cn % N_INUSEBITS)) - 1;
		if (map != FULL_RUN) {
			cn = idx * N_INUSEBITS + FUNC3(map ^ FULL_RUN) - 1;
			if ((l = FUNC2(pmp, cn, count)) >= count)
				return (FUNC1(pmp, cn, count, fillwith, retcluster, got));
			if (l > foundl) {
				foundcn = cn;
				foundl = l;
			}
			cn += l + 1;
			continue;
		}
		cn += N_INUSEBITS - cn % N_INUSEBITS;
	}
	for (cn = 0; cn < newst;) {
		idx = cn / N_INUSEBITS;
		map = pmp->pm_inusemap[idx];
		map |= (1U << (cn % N_INUSEBITS)) - 1;
		if (map != FULL_RUN) {
			cn = idx * N_INUSEBITS + FUNC3(map ^ FULL_RUN) - 1;
			if ((l = FUNC2(pmp, cn, count)) >= count)
				return (FUNC1(pmp, cn, count, fillwith, retcluster, got));
			if (l > foundl) {
				foundcn = cn;
				foundl = l;
			}
			cn += l + 1;
			continue;
		}
		cn += N_INUSEBITS - cn % N_INUSEBITS;
	}

	if (!foundl)
		return (ENOSPC);

	if (len)
		return (FUNC1(pmp, start, len, fillwith, retcluster, got));
	else
		return (FUNC1(pmp, foundcn, foundl, fillwith, retcluster, got));
}