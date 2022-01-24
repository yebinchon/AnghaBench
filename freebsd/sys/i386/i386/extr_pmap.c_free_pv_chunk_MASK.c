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
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
struct pv_chunk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct pv_chunk*,int /*<<< orphan*/ ) ; 
 scalar_t__ _NPCPV ; 
 int /*<<< orphan*/  pc_chunk_count ; 
 int /*<<< orphan*/  pc_chunk_frees ; 
 int /*<<< orphan*/  pc_lru ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pv_chunks ; 
 int /*<<< orphan*/  pv_entry_spare ; 
 int /*<<< orphan*/  pv_vafree ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct pv_chunk *pc)
{
	vm_page_t m;

 	FUNC2(&pv_chunks, pc, pc_lru);
	FUNC1(pv_entry_spare -= _NPCPV);
	FUNC1(pc_chunk_count--);
	FUNC1(pc_chunk_frees++);
	/* entire chunk is free, return it */
	m = FUNC0(FUNC3((vm_offset_t)pc));
	FUNC5((vm_offset_t)pc, 1);
	FUNC7(m);
	FUNC6(m);
	FUNC4(&pv_vafree, (vm_offset_t)pc);
}