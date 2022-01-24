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
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int NVSIDS ; 
 int VSID_NBPW ; 
 int /*<<< orphan*/  moea64_slb_mutex ; 
 int* moea64_vsid_bitmap ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(uint64_t vsid)
{
	int idx, mask;

	FUNC1(&moea64_slb_mutex);
	idx = vsid & (NVSIDS-1);
	mask = 1 << (idx % VSID_NBPW);
	idx /= VSID_NBPW;
	FUNC0(moea64_vsid_bitmap[idx] & mask,
	    ("Freeing unallocated VSID %#jx", vsid));
	moea64_vsid_bitmap[idx] &= ~mask;
	FUNC2(&moea64_slb_mutex);
}