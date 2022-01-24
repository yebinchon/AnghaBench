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
typedef  int uint32_t ;
struct memwin_init {int base; int /*<<< orphan*/  aperture; } ;
struct memwin {int mw_base; int /*<<< orphan*/  mw_lock; int /*<<< orphan*/  mw_aperture; scalar_t__ mw_curpos; } ;
struct adapter {struct memwin* memwin; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_PCIE_MEM_ACCESS_BASE_WIN ; 
 int NUM_MEMWIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ PCIM_BAR_MEM_BASE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct adapter*,int /*<<< orphan*/ ) ; 
 struct memwin_init* t4_memwin ; 
 int /*<<< orphan*/  FUNC11 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 struct memwin_init* t5_memwin ; 

__attribute__((used)) static void
FUNC13(struct adapter *sc)
{
	const struct memwin_init *mw_init;
	struct memwin *mw;
	int i;
	uint32_t bar0;

	if (FUNC5(sc)) {
		/*
		 * Read low 32b of bar0 indirectly via the hardware backdoor
		 * mechanism.  Works from within PCI passthrough environments
		 * too, where rman_get_start() can return a different value.  We
		 * need to program the T4 memory window decoders with the actual
		 * addresses that will be coming across the PCIe link.
		 */
		bar0 = FUNC10(sc, FUNC1(0));
		bar0 &= (uint32_t) PCIM_BAR_MEM_BASE;

		mw_init = &t4_memwin[0];
	} else {
		/* T5+ use the relative offset inside the PCIe BAR */
		bar0 = 0;

		mw_init = &t5_memwin[0];
	}

	for (i = 0, mw = &sc->memwin[0]; i < NUM_MEMWIN; i++, mw_init++, mw++) {
		FUNC7(&mw->mw_lock, "memory window access");
		mw->mw_base = mw_init->base;
		mw->mw_aperture = mw_init->aperture;
		mw->mw_curpos = 0;
		FUNC12(sc,
		    FUNC0(A_PCIE_MEM_ACCESS_BASE_WIN, i),
		    (mw->mw_base + bar0) | FUNC2(0) |
		    FUNC3(FUNC4(mw->mw_aperture) - 10));
		FUNC8(&mw->mw_lock);
		FUNC6(sc, i, 0);
		FUNC9(&mw->mw_lock);
	}

	/* flush */
	FUNC11(sc, FUNC0(A_PCIE_MEM_ACCESS_BASE_WIN, 2));
}