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
typedef  int u_int64_t ;
struct mem_range_softc {int mr_cap; int mr_ndesc; struct mem_range_desc* mr_desc; } ;
struct mem_range_desc {int mr_flags; int mr_base; int /*<<< orphan*/  mr_len; } ;

/* Variables and functions */
 int CR0_CD ; 
 int CR0_NW ; 
 int CR4_PGE ; 
 int MDF_ACTIVE ; 
 int MR686_FIXMTRR ; 
 int MSR_MTRR16kBase ; 
 int MSR_MTRR4kBase ; 
 int MSR_MTRR64kBase ; 
 int MSR_MTRRVarBase ; 
 int MSR_MTRRdefType ; 
 int MTRR_DEF_ENABLE ; 
 int MTRR_N16K ; 
 int MTRR_N4K ; 
 int MTRR_N64K ; 
 int MTRR_PHYSMASK_VALID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int mtrr_physmask ; 
 int FUNC5 () ; 
 int FUNC6 () ; 
 int FUNC7 (int) ; 
 int FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int FUNC11 (int,int) ; 

__attribute__((used)) static void
FUNC12(void *arg)
{
	struct mem_range_softc *sc = arg;
	struct mem_range_desc *mrd;
	u_int64_t omsrv, msrv;
	int i, j, msr;
	u_long cr0, cr4;

	mrd = sc->mr_desc;

	FUNC0();

	/* Disable PGE. */
	cr4 = FUNC6();
	FUNC4(cr4 & ~CR4_PGE);

	/* Disable caches (CD = 1, NW = 0). */
	cr0 = FUNC5();
	FUNC3((cr0 & ~CR0_NW) | CR0_CD);

	/* Flushes caches and TLBs. */
	FUNC9();
	FUNC2();

	/* Disable MTRRs (E = 0). */
	FUNC10(MSR_MTRRdefType, FUNC7(MSR_MTRRdefType) & ~MTRR_DEF_ENABLE);

	/* Set fixed-range MTRRs. */
	if (sc->mr_cap & MR686_FIXMTRR) {
		msr = MSR_MTRR64kBase;
		for (i = 0; i < MTRR_N64K / 8; i++, msr++) {
			msrv = 0;
			omsrv = FUNC7(msr);
			for (j = 7; j >= 0; j--) {
				msrv = msrv << 8;
				msrv |= FUNC11((mrd + j)->mr_flags,
				    omsrv >> (j * 8));
			}
			FUNC10(msr, msrv);
			mrd += 8;
		}
		msr = MSR_MTRR16kBase;
		for (i = 0; i < MTRR_N16K / 8; i++, msr++) {
			msrv = 0;
			omsrv = FUNC7(msr);
			for (j = 7; j >= 0; j--) {
				msrv = msrv << 8;
				msrv |= FUNC11((mrd + j)->mr_flags,
				    omsrv >> (j * 8));
			}
			FUNC10(msr, msrv);
			mrd += 8;
		}
		msr = MSR_MTRR4kBase;
		for (i = 0; i < MTRR_N4K / 8; i++, msr++) {
			msrv = 0;
			omsrv = FUNC7(msr);
			for (j = 7; j >= 0; j--) {
				msrv = msrv << 8;
				msrv |= FUNC11((mrd + j)->mr_flags,
				    omsrv >> (j * 8));
			}
			FUNC10(msr, msrv);
			mrd += 8;
		}
	}

	/* Set remainder which must be variable MTRRs. */
	msr = MSR_MTRRVarBase;
	for (; mrd - sc->mr_desc < sc->mr_ndesc; msr += 2, mrd++) {
		/* base/type register */
		omsrv = FUNC7(msr);
		if (mrd->mr_flags & MDF_ACTIVE) {
			msrv = mrd->mr_base & mtrr_physmask;
			msrv |= FUNC11(mrd->mr_flags, omsrv);
		} else {
			msrv = 0;
		}
		FUNC10(msr, msrv);

		/* mask/active register */
		if (mrd->mr_flags & MDF_ACTIVE) {
			msrv = MTRR_PHYSMASK_VALID |
			    FUNC8(mtrr_physmask, mrd->mr_len);
		} else {
			msrv = 0;
		}
		FUNC10(msr + 1, msrv);
	}

	/* Flush caches and TLBs. */
	FUNC9();
	FUNC2();

	/* Enable MTRRs. */
	FUNC10(MSR_MTRRdefType, FUNC7(MSR_MTRRdefType) | MTRR_DEF_ENABLE);

	/* Restore caches and PGE. */
	FUNC3(cr0);
	FUNC4(cr4);

	FUNC1();
}