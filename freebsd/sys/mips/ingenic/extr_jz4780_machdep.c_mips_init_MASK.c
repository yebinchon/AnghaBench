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
struct mem_region {scalar_t__ mr_start; scalar_t__ mr_size; } ;

/* Variables and functions */
 int FDT_MEM_REGIONS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  KDB_WHY_BOOTFLAGS ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int RB_KDB ; 
 int boothowto ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__* dump_avail ; 
 scalar_t__ FUNC5 (struct mem_region*,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  kernel_kseg0_end ; 
 int* led ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__* phys_avail ; 
 int /*<<< orphan*/  physmem ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  realmem ; 

__attribute__((used)) static void
FUNC14(void)
{
	int i;
#ifdef FDT
	struct mem_region mr[FDT_MEM_REGIONS];
	uint64_t val;
	int mr_cnt;
	int j;
#endif

	for (i = 0; i < 10; i++) {
		phys_avail[i] = 0;
	}

	/* The minimal amount of memory Ingenic SoC can have. */
	dump_avail[0] = phys_avail[0] = FUNC2(kernel_kseg0_end);
	physmem = realmem = FUNC3(32 * 1024 * 1024);

	/*
	 * X1000 mips cpu special.
	 * TODO: do anyone know what is this ?
	 */
	__asm(
		"li	$2, 0xa9000000	\n\t"
		"mtc0	$2, $5, 4	\n\t"
		"nop			\n\t"
		::"r"(2));

#ifdef FDT
	if (fdt_get_mem_regions(mr, &mr_cnt, &val) == 0) {

		physmem = realmem = btoc(val);

		KASSERT((phys_avail[0] >= mr[0].mr_start) && \
			(phys_avail[0] < (mr[0].mr_start + mr[0].mr_size)),
			("First region is not within FDT memory range"));

		/* Limit size of the first region */
		phys_avail[1] = (mr[0].mr_start + MIN(mr[0].mr_size, ctob(realmem)));
		dump_avail[1] = phys_avail[1];

		/* Add the rest of regions */
		for (i = 1, j = 2; i < mr_cnt; i++, j+=2) {
			phys_avail[j] = mr[i].mr_start;
			phys_avail[j+1] = (mr[i].mr_start + mr[i].mr_size);
			dump_avail[j] = phys_avail[j];
			dump_avail[j+1] = phys_avail[j+1];
		}
	}
#endif

	FUNC6();
	FUNC7(physmem);
	FUNC10();
	FUNC13();
	FUNC11();
	FUNC12();
	FUNC9();
	led[0] = 0x8000;
#ifdef KDB
	if (boothowto & RB_KDB)
		kdb_enter(KDB_WHY_BOOTFLAGS, "Boot flags requested debugger");
#endif
}