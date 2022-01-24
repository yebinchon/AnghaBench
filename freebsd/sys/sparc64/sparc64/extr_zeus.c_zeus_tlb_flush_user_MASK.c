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
typedef  scalar_t__ u_int ;

/* Variables and functions */
 int /*<<< orphan*/  ASI_DTLB_DATA_ACCESS_REG ; 
 int /*<<< orphan*/  ASI_DTLB_TAG_READ_REG ; 
 int /*<<< orphan*/  ASI_ITLB_DATA_ACCESS_REG ; 
 int /*<<< orphan*/  ASI_ITLB_TAG_READ_REG ; 
 int TD_L ; 
 int TD_V ; 
 scalar_t__ TLB_CTX_KERNEL ; 
 int /*<<< orphan*/  TLB_DAR_FTLB ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  TLB_DAR_STLB ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ ZEUS_FTLB_ENTRIES ; 
 scalar_t__ ZEUS_STLB_ENTRIES ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(void)
{
	u_long data, tag;
	u_int i, slot;

	for (i = 0; i < ZEUS_FTLB_ENTRIES; i++) {
		slot = FUNC0(TLB_DAR_FTLB, i);
		data = FUNC2(slot, ASI_DTLB_DATA_ACCESS_REG);
		tag = FUNC2(slot, ASI_DTLB_TAG_READ_REG);
		if ((data & TD_V) != 0 && (data & TD_L) == 0 &&
		    FUNC1(tag) != TLB_CTX_KERNEL)
			FUNC3(slot, ASI_DTLB_DATA_ACCESS_REG, 0);
		data = FUNC2(slot, ASI_ITLB_DATA_ACCESS_REG);
		tag = FUNC2(slot, ASI_ITLB_TAG_READ_REG);
		if ((data & TD_V) != 0 && (data & TD_L) == 0 &&
		    FUNC1(tag) != TLB_CTX_KERNEL)
			FUNC3(slot, ASI_ITLB_DATA_ACCESS_REG, 0);
	}
	for (i = 0; i < ZEUS_STLB_ENTRIES; i++) {
		slot = FUNC0(TLB_DAR_STLB, i);
		data = FUNC2(slot, ASI_DTLB_DATA_ACCESS_REG);
		tag = FUNC2(slot, ASI_DTLB_TAG_READ_REG);
		if ((data & TD_V) != 0 && (data & TD_L) == 0 &&
		    FUNC1(tag) != TLB_CTX_KERNEL)
			FUNC3(slot, ASI_DTLB_DATA_ACCESS_REG, 0);
		data = FUNC2(slot, ASI_ITLB_DATA_ACCESS_REG);
		tag = FUNC2(slot, ASI_ITLB_TAG_READ_REG);
		if ((data & TD_V) != 0 && (data & TD_L) == 0 &&
		    FUNC1(tag) != TLB_CTX_KERNEL)
			FUNC3(slot, ASI_ITLB_DATA_ACCESS_REG, 0);
	}
}