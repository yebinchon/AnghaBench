#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
struct pv_chunk {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  phys_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct pv_chunk*,int /*<<< orphan*/ ) ; 
 int _NPCPV ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pc_chunk_count ; 
 int /*<<< orphan*/  pc_chunk_frees ; 
 int /*<<< orphan*/  pc_lru ; 
 int /*<<< orphan*/  pv_chunks ; 
 int /*<<< orphan*/  pv_chunks_mutex ; 
 int /*<<< orphan*/  pv_entry_spare ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC11(struct pv_chunk *pc)
{
	vm_page_t m;

	FUNC7(&pv_chunks_mutex);
 	FUNC3(&pv_chunks, pc, pc_lru);
	FUNC8(&pv_chunks_mutex);
	FUNC2(FUNC5(&pv_entry_spare, _NPCPV));
	FUNC2(FUNC5(&pc_chunk_count, 1));
	FUNC2(FUNC4(&pc_chunk_frees, 1));
	/* entire chunk is free, return it */
	m = FUNC1(FUNC0((vm_offset_t)pc));
	FUNC6(m->phys_addr);
	FUNC10(m);
	FUNC9(m);
}