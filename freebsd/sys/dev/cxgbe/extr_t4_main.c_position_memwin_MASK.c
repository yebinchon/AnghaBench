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
struct memwin {int mw_curpos; int /*<<< orphan*/  mw_lock; } ;
struct adapter {int /*<<< orphan*/  pf; struct memwin* memwin; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_PCIE_MEM_ACCESS_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NUM_MEMWIN ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RA_WLOCKED ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int,int) ; 

__attribute__((used)) static void
FUNC7(struct adapter *sc, int idx, uint32_t addr)
{
	struct memwin *mw;
	uint32_t pf;
	uint32_t reg;

	FUNC0(idx >= 0 && idx < NUM_MEMWIN);
	mw = &sc->memwin[idx];
	FUNC4(&mw->mw_lock, RA_WLOCKED);

	if (FUNC3(sc)) {
		pf = 0;
		mw->mw_curpos = addr & ~0xf;	/* start must be 16B aligned */
	} else {
		pf = FUNC2(sc->pf);
		mw->mw_curpos = addr & ~0x7f;	/* start must be 128B aligned */
	}
	reg = FUNC1(A_PCIE_MEM_ACCESS_OFFSET, idx);
	FUNC6(sc, reg, mw->mw_curpos | pf);
	FUNC5(sc, reg);	/* flush */
}