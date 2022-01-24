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
struct bhnd_pwrctl_softc {int /*<<< orphan*/  res; int /*<<< orphan*/  chipc_dev; } ;
typedef  int /*<<< orphan*/  bhnd_clksrc ;

/* Variables and functions */
 int /*<<< orphan*/  BHND_CLKSRC_LPO ; 
 int /*<<< orphan*/  BHND_CLKSRC_PCI ; 
 int /*<<< orphan*/  BHND_CLKSRC_UNKNOWN ; 
 int /*<<< orphan*/  BHND_CLKSRC_XTAL ; 
 int /*<<< orphan*/  BHND_CLOCK_ILP ; 
 int /*<<< orphan*/  CHIPC_PLL_SLOWCLK_CTL ; 
#define  CHIPC_SCC_SS_LPO 130 
 int CHIPC_SCC_SS_MASK ; 
#define  CHIPC_SCC_SS_PCI 129 
#define  CHIPC_SCC_SS_XTAL 128 
 int /*<<< orphan*/  PCICLK_CTL ; 
 scalar_t__ FUNC0 (struct bhnd_pwrctl_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SLOWCLK_CTL ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bhnd_clksrc
FUNC3(struct bhnd_pwrctl_softc *sc)
{
	uint32_t clkreg;
	uint32_t clksrc;

	/* Fetch clock source */
	if (FUNC0(sc, PCICLK_CTL)) {
		return (FUNC2(sc->chipc_dev,
		    BHND_CLOCK_ILP));
	} else if (FUNC0(sc, SLOWCLK_CTL)) {
		clkreg = FUNC1(sc->res, CHIPC_PLL_SLOWCLK_CTL);
		clksrc = clkreg & CHIPC_SCC_SS_MASK;
	} else {
		/* Instaclock */
		clksrc = CHIPC_SCC_SS_XTAL;
	}

	/* Map to bhnd_clksrc */
	switch (clksrc) {
	case CHIPC_SCC_SS_PCI:
		return (BHND_CLKSRC_PCI);
	case CHIPC_SCC_SS_LPO:
		return (BHND_CLKSRC_LPO);
	case CHIPC_SCC_SS_XTAL:
		return (BHND_CLKSRC_XTAL);
	default:
		return (BHND_CLKSRC_UNKNOWN);
	}
}