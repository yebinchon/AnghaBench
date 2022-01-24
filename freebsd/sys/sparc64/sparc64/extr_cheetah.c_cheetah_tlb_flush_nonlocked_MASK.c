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

/* Variables and functions */
 int /*<<< orphan*/  ASI_DMMU_DEMAP ; 
 int /*<<< orphan*/  ASI_IMMU_DEMAP ; 
 int /*<<< orphan*/  KERNBASE ; 
 int /*<<< orphan*/  TLB_DEMAP_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(void)
{

	FUNC1(TLB_DEMAP_ALL, ASI_DMMU_DEMAP, 0);
	FUNC1(TLB_DEMAP_ALL, ASI_IMMU_DEMAP, 0);
	FUNC0(KERNBASE);
}