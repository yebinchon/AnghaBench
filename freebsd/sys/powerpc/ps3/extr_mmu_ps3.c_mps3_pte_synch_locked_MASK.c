#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_2__ {int slot; } ;
struct pvo_entry {int pvo_vpn; TYPE_1__ pvo_pte; } ;
typedef  int int64_t ;

/* Variables and functions */
 int ADDR_API_SHFT64 ; 
 int ADDR_PIDX_SHFT ; 
 int LPTE_AVPN_MASK ; 
 int LPTE_CHG ; 
 int LPTE_REF ; 
 int LPTE_VALID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int*,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  mps3_vas_id ; 

__attribute__((used)) static int64_t
FUNC2(struct pvo_entry *pvo)
{
	uint64_t halfbucket[4], rcbits;
	
	FUNC0();
	FUNC1(mps3_vas_id, pvo->pvo_pte.slot & ~0x3UL,
	    &halfbucket[0], &halfbucket[1], &halfbucket[2], &halfbucket[3],
	    &rcbits);

	/* Check if present in page table */
	if ((halfbucket[pvo->pvo_pte.slot & 0x3] & LPTE_AVPN_MASK) !=
	    ((pvo->pvo_vpn >> (ADDR_API_SHFT64 - ADDR_PIDX_SHFT)) &
	    LPTE_AVPN_MASK))
		return (-1);
	if (!(halfbucket[pvo->pvo_pte.slot & 0x3] & LPTE_VALID))
		return (-1);

	/*
	 * rcbits contains the low 12 bits of each PTE's 2nd part,
	 * spaced at 16-bit intervals
	 */

	return ((rcbits >> ((3 - (pvo->pvo_pte.slot & 0x3))*16)) &
	    (LPTE_CHG | LPTE_REF));
}