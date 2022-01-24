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
typedef  int u_int32_t ;
struct bfe_softc {int /*<<< orphan*/  bfe_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFE_BAR0_WIN ; 
 int BFE_RC_MASK ; 
 int BFE_REG_PCI ; 
 int /*<<< orphan*/  BFE_SBIDHIGH ; 
 int /*<<< orphan*/  BFE_SBINTVEC ; 
 int BFE_SSB_PCI_BURST ; 
 int BFE_SSB_PCI_PREF ; 
 int /*<<< orphan*/  BFE_SSB_PCI_TRANS_2 ; 
 int FUNC0 (struct bfe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfe_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC4(struct bfe_softc *sc, u_int32_t cores)
{
	u_int32_t bar_orig, pci_rev, val;

	bar_orig = FUNC2(sc->bfe_dev, BFE_BAR0_WIN, 4);
	FUNC3(sc->bfe_dev, BFE_BAR0_WIN, BFE_REG_PCI, 4);
	pci_rev = FUNC0(sc, BFE_SBIDHIGH) & BFE_RC_MASK;

	val = FUNC0(sc, BFE_SBINTVEC);
	val |= cores;
	FUNC1(sc, BFE_SBINTVEC, val);

	val = FUNC0(sc, BFE_SSB_PCI_TRANS_2);
	val |= BFE_SSB_PCI_PREF | BFE_SSB_PCI_BURST;
	FUNC1(sc, BFE_SSB_PCI_TRANS_2, val);

	FUNC3(sc->bfe_dev, BFE_BAR0_WIN, bar_orig, 4);
}