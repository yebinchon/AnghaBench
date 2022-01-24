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
typedef  void* vm_paddr_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int XLP_MEM_LIM ; 
 int /*<<< orphan*/  _end ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void** dump_avail ; 
 int FUNC4 (void**,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 void** phys_avail ; 
 int /*<<< orphan*/  physmem ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  realmem ; 
 void* FUNC8 (void*) ; 
 void** xlp_mem_excl ; 

__attribute__((used)) static void
FUNC9(void)
{
	vm_paddr_t physsz, tmp;
	uint64_t bridgebase, base, lim, val;
	int i, j, k, n;

	/* update kernel image area in exclude regions */
	tmp = (vm_paddr_t)FUNC2(&_end);
	tmp = FUNC8(tmp) + 0x20000; /* round up */
	xlp_mem_excl[1] = tmp;

	FUNC7("Memory (from DRAM BARs):\n");
	bridgebase = FUNC5(0); /* TODO: Add other nodes */
	physsz = 0;
        for (i = 0, j = 0; i < 8; i++) {
		val = FUNC6(bridgebase, FUNC0(i));
                val = (val >>  12) & 0xfffff;
		base = val << 20;
		val = FUNC6(bridgebase, FUNC1(i));
                val = (val >>  12) & 0xfffff;
		if (val == 0)	/* BAR not enabled */
			continue;
                lim = (val + 1) << 20;
		FUNC7("  BAR %d: %#jx - %#jx : ", i, (intmax_t)base,
		    (intmax_t)lim);

		if (lim <= base) {
			FUNC7("\tskipped - malformed %#jx -> %#jx\n",
			    (intmax_t)base, (intmax_t)lim);
			continue;
		} else if (base >= XLP_MEM_LIM) {
			FUNC7(" skipped - outside usable limit %#jx.\n",
			    (intmax_t)XLP_MEM_LIM);
			continue;
		} else if (lim >= XLP_MEM_LIM) {
			lim = XLP_MEM_LIM;
			FUNC7(" truncated to %#jx.\n", (intmax_t)XLP_MEM_LIM);
		} else
			FUNC7(" usable\n");

		/* exclude unusable regions from BAR and add rest */
		n = FUNC4(&phys_avail[j], base, lim);
		for (k = j; k < j + n; k += 2) {
			physsz += phys_avail[k + 1] - phys_avail[k];
			FUNC7("\tMem[%d]: %#jx - %#jx\n", k/2,
			    (intmax_t)phys_avail[k], (intmax_t)phys_avail[k+1]);
		}
		j = k;
        }

	/* setup final entry with 0 */
	phys_avail[j] = phys_avail[j + 1] = 0;

	/* copy phys_avail to dump_avail */
	for (i = 0; i <= j + 1; i++)
		dump_avail[i] = phys_avail[i];

	realmem = physmem = FUNC3(physsz);
}