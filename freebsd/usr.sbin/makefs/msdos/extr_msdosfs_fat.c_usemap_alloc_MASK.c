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
struct msdosfsmount {size_t pm_maxcluster; int pm_flags; int* pm_inusemap; scalar_t__ pm_freeclustercount; } ;

/* Variables and functions */
 int MSDOSFSMNT_RONLY ; 
 int MSDOSFS_FSIMOD ; 
 size_t N_INUSEBITS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static __inline void
FUNC1(struct msdosfsmount *pmp, u_long cn)
{

	FUNC0(cn <= pmp->pm_maxcluster);
	FUNC0((pmp->pm_flags & MSDOSFSMNT_RONLY) == 0);
	FUNC0((pmp->pm_inusemap[cn / N_INUSEBITS] & (1 << (cn % N_INUSEBITS)))
	    == 0);
	FUNC0(pmp->pm_freeclustercount > 0);

	pmp->pm_inusemap[cn / N_INUSEBITS] |= 1U << (cn % N_INUSEBITS);
	pmp->pm_freeclustercount--;
	pmp->pm_flags |= MSDOSFS_FSIMOD;
}