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
typedef  int uint32_t ;
struct pccard_ivar {struct pccard_function* pf; } ;
struct pccard_function {int ccr_base; int /*<<< orphan*/  ccr_rid; int /*<<< orphan*/  pf_ccrh; int /*<<< orphan*/  pf_ccrt; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 struct pccard_ivar* FUNC1 (int /*<<< orphan*/ ) ; 
 int PCCARD_MEM_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t brdev, device_t child, uint32_t offset,
    uint8_t val)
{
	struct pccard_ivar *devi = FUNC1(child);
	struct pccard_function *pf = devi->pf;

	/*
	 * Optimization.  Most of the time, devices want to access
	 * the same page of the attribute memory that the CCR is in.
	 * We take advantage of this fact here.
	 */
	if (offset / PCCARD_MEM_PAGE_SIZE ==
	    pf->ccr_base / PCCARD_MEM_PAGE_SIZE)
		FUNC2(pf->pf_ccrt, pf->pf_ccrh,
		    offset % PCCARD_MEM_PAGE_SIZE, val);
	else {
		FUNC0(brdev, child, pf->ccr_rid, offset,
		    &offset);
		FUNC2(pf->pf_ccrt, pf->pf_ccrh, offset, val);
		FUNC0(brdev, child, pf->ccr_rid, pf->ccr_base,
		    &offset);
	}

	return 0;
}