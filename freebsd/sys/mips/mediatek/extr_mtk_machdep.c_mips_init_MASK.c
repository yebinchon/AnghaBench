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
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ MTK_SOC_MT7621 ; 
 scalar_t__ MTK_SOC_RT2880 ; 
 int RB_KDB ; 
 int boothowto ; 
 int bootverbose ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__* dump_avail ; 
 scalar_t__ FUNC5 (struct mem_region*,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 char* FUNC10 (char*) ; 
 int /*<<< orphan*/  kernel_kseg0_end ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__* phys_avail ; 
 scalar_t__ physmem ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 scalar_t__ realmem ; 
 int FUNC17 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC18(void)
{
	struct mem_region mr[FDT_MEM_REGIONS];
	uint64_t val;
	int i, j, mr_cnt;
	char *memsize;

	FUNC16("entry: mips_init()\n");

	bootverbose = 1;

	for (i = 0; i < 10; i++)
		phys_avail[i] = 0;

	dump_avail[0] = phys_avail[0] = FUNC2(kernel_kseg0_end);

	/*
	 * The most low memory MT7621 can have. Currently MT7621 is the chip
	 * that supports the most memory, so that seems reasonable.
	 */
	realmem = FUNC3(448 * 1024 * 1024);

	if (FUNC5(mr, &mr_cnt, &val) == 0) {
		physmem = FUNC3(val);

		FUNC16("RAM size: %ldMB (from FDT)\n",
		    FUNC4(physmem) / (1024 * 1024));

		FUNC0((phys_avail[0] >= mr[0].mr_start) && \
			(phys_avail[0] < (mr[0].mr_start + mr[0].mr_size)),
			("First region is not within FDT memory range"));

		/* Limit size of the first region */
		phys_avail[1] = (mr[0].mr_start +
		    FUNC1(mr[0].mr_size, FUNC4(realmem)));
		dump_avail[1] = phys_avail[1];

		/* Add the rest of the regions */
		for (i = 1, j = 2; i < mr_cnt; i++, j+=2) {
			phys_avail[j] = mr[i].mr_start;
			phys_avail[j+1] = (mr[i].mr_start + mr[i].mr_size);
			dump_avail[j] = phys_avail[j];
			dump_avail[j+1] = phys_avail[j+1];
		}
	} else {
		if ((memsize = FUNC10("memsize")) != NULL) {
			physmem = FUNC3(FUNC17(memsize, NULL, 0) << 20);
			FUNC16("RAM size: %ldMB (from memsize)\n",
			    FUNC4(physmem) / (1024 * 1024));
		} else { /* All else failed, assume 32MB */
			physmem = FUNC3(32 * 1024 * 1024);
			FUNC16("RAM size: %ldMB (assumed)\n",
			    FUNC4(physmem) / (1024 * 1024));
		}

		if (FUNC13() == MTK_SOC_RT2880) {
			/* RT2880 memory start is 88000000 */
			dump_avail[1] = phys_avail[1] = FUNC4(physmem)
			    + 0x08000000;
		} else if (FUNC4(physmem) < (448 * 1024 * 1024)) {
			/*
			 * Anything up to 448MB is assumed to be directly
			 * mappable as low memory...
			 */
			dump_avail[1] = phys_avail[1] = FUNC4(physmem);
		} else if (FUNC13() == MTK_SOC_MT7621) {
			/*
			 * On MT7621 the low memory is limited to 448MB, the
			 * rest is high memory, mapped at 0x20000000
			 */
			phys_avail[1] = 448 * 1024 * 1024;
			phys_avail[2] = 0x20000000;
			phys_avail[3] = phys_avail[2] + FUNC4(physmem) -
			    phys_avail[1];
			dump_avail[1] = phys_avail[1] - phys_avail[0];
			dump_avail[2] = phys_avail[2];
			dump_avail[3] = phys_avail[3] - phys_avail[2];
		} else {
			/*
			 * We have > 448MB RAM and we're not MT7621? Currently
			 * there is no such chip, so we'll just limit the RAM to
			 * 32MB and let the user know...
			 */
			FUNC16("Unknown chip, assuming 32MB RAM\n");
			physmem = FUNC3(32 * 1024 * 1024);
			dump_avail[1] = phys_avail[1] = FUNC4(physmem);
		}
	}

	if (physmem < realmem)
		realmem = physmem;

	FUNC6();
	FUNC7(physmem);
	FUNC11();
	FUNC15();
	FUNC12();
	FUNC14();
	FUNC9();
#ifdef KDB
	if (boothowto & RB_KDB)
		kdb_enter(KDB_WHY_BOOTFLAGS, "Boot flags requested debugger");
#endif
}