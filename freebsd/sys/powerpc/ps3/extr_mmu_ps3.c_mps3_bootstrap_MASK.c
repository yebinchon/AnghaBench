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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int uint64_t ;
struct lpteg {int dummy; } ;
typedef  int /*<<< orphan*/  mmu_t ;

/* Variables and functions */
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC0 (int,int,unsigned long,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int moea64_pteg_count ; 
 int /*<<< orphan*/  mps3_table_lock ; 
 int /*<<< orphan*/  mps3_vas_id ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(mmu_t mmup, vm_offset_t kernelstart, vm_offset_t kernelend)
{
	uint64_t final_pteg_count;

	FUNC6(&mps3_table_lock, "page table", NULL, MTX_DEF);

	FUNC3(mmup, kernelstart, kernelend);

	/* In case we had a page table already */
	FUNC1(0);

	/* Allocate new hardware page table */
	FUNC0(
	    20 /* log_2(moea64_pteg_count) */, 2 /* n page sizes */,
	    (24UL << 56) | (16UL << 48) /* page sizes 16 MB + 64 KB */,
	    &mps3_vas_id, &final_pteg_count
	);

	FUNC2(mps3_vas_id);

	moea64_pteg_count = final_pteg_count / sizeof(struct lpteg);

	FUNC5(mmup, kernelstart, kernelend);
	FUNC4(mmup, kernelstart, kernelend);
}