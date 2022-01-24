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
typedef  int /*<<< orphan*/  u_long ;
struct psycho_softc {int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_is; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 int /*<<< orphan*/  PSR_UE_AFA ; 
 int /*<<< orphan*/  PSR_UE_AFS ; 
 int FUNC0 (struct psycho_softc*,int /*<<< orphan*/ ) ; 
 int UEAFSR_P_DTE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(void *arg)
{
	struct psycho_softc *sc = arg;
	uint64_t afar, afsr;

	afar = FUNC0(sc, PSR_UE_AFA);
	afsr = FUNC0(sc, PSR_UE_AFS);
	/*
	 * On the UltraSPARC-IIi/IIe, IOMMU misses/protection faults cause
	 * the AFAR to be set to the physical address of the TTE entry that
	 * was invalid/write protected.  Call into the IOMMU code to have
	 * them decoded to virtual I/O addresses.
	 */
	if ((afsr & UEAFSR_P_DTE) != 0)
		FUNC2(sc->sc_is, afar);
	FUNC3("%s: uncorrectable DMA error AFAR %#lx AFSR %#lx",
	    FUNC1(sc->sc_dev), (u_long)afar, (u_long)afsr);
	return (FILTER_HANDLED);
}