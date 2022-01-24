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
typedef  size_t u_long ;
struct msdosfsmount {size_t pm_maxcluster; int pm_flags; unsigned int* pm_inusemap; int /*<<< orphan*/  pm_freeclustercount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MSDOSFSMNT_RONLY ; 
 int /*<<< orphan*/  FUNC1 (struct msdosfsmount*) ; 
 int MSDOSFS_FSIMOD ; 
 size_t N_INUSEBITS ; 

__attribute__((used)) static __inline void
FUNC2(struct msdosfsmount *pmp, u_long cn)
{

	FUNC1(pmp);

	FUNC0(cn <= pmp->pm_maxcluster, ("cn too large %lu %lu", cn,
	    pmp->pm_maxcluster));
	FUNC0((pmp->pm_flags & MSDOSFSMNT_RONLY) == 0,
	    ("usemap_free on ro msdosfs mount"));
	pmp->pm_freeclustercount++;
	pmp->pm_flags |= MSDOSFS_FSIMOD;
	FUNC0((pmp->pm_inusemap[cn / N_INUSEBITS] &
	    (1U << (cn % N_INUSEBITS))) != 0,
	    ("Freeing unused sector %ld %ld %x", cn, cn % N_INUSEBITS,
	    (unsigned)pmp->pm_inusemap[cn / N_INUSEBITS]));
	pmp->pm_inusemap[cn / N_INUSEBITS] &= ~(1U << (cn % N_INUSEBITS));
}