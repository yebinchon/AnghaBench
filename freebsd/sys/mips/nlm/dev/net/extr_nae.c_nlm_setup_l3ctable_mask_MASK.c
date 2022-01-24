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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  NAE_L3_CTABLE_MASK0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC1(uint64_t nae_base, int hwport, uint32_t ptmask,
    uint32_t l3portmask)
{
	uint32_t val;

	val = ((ptmask & 0x1) << 6)	|
	    ((l3portmask & 0x1) << 5)	|
	    (hwport & 0x1f);
	FUNC0(nae_base, NAE_L3_CTABLE_MASK0, val);
}