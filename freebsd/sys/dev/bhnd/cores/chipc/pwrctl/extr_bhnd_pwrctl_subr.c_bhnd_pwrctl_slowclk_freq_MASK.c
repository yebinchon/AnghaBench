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
struct bhnd_pwrctl_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  res; } ;
typedef  int bhnd_clksrc ;

/* Variables and functions */
#define  BHND_CLKSRC_LPO 130 
#define  BHND_CLKSRC_PCI 129 
#define  BHND_CLKSRC_XTAL 128 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int CHIPC_LPOMAXFREQ ; 
 int CHIPC_LPOMINFREQ ; 
 int CHIPC_PCIMAXFREQ ; 
 int CHIPC_PCIMINFREQ ; 
 int /*<<< orphan*/  CHIPC_PLL_SLOWCLK_CTL ; 
 int /*<<< orphan*/  CHIPC_SCC_CD ; 
 int /*<<< orphan*/  CHIPC_SYCC_CD ; 
 int /*<<< orphan*/  CHIPC_SYS_CLK_CTL ; 
 int CHIPC_XTALMAXFREQ ; 
 int CHIPC_XTALMINFREQ ; 
 int /*<<< orphan*/  INSTACLK_CTL ; 
 int /*<<< orphan*/  PCICLK_CTL ; 
 scalar_t__ FUNC1 (struct bhnd_pwrctl_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SLOWCLK_CTL ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct bhnd_pwrctl_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static uint32_t
FUNC5(struct bhnd_pwrctl_softc *sc, bool max_freq)
{
	bhnd_clksrc	slowclk;
	uint32_t	div;
	uint32_t	hz;

	slowclk = FUNC3(sc);

	/* Determine clock divisor */
	if (FUNC1(sc, PCICLK_CTL)) {
		if (slowclk == BHND_CLKSRC_PCI)
			div = 64;
		else
			div = 32;
	} else if (FUNC1(sc, SLOWCLK_CTL)) {
		div = FUNC2(sc->res, CHIPC_PLL_SLOWCLK_CTL);
		div = FUNC0(div, CHIPC_SCC_CD);
		div = 4 * (div + 1);
	} else if (FUNC1(sc, INSTACLK_CTL)) {
		if (max_freq) {
			div = 1;
		} else {
			div = FUNC2(sc->res, CHIPC_SYS_CLK_CTL);
			div = FUNC0(div, CHIPC_SYCC_CD);
			div = 4 * (div + 1);
		}
	} else {
		FUNC4(sc->dev, "unknown device type\n");
		return (0);
	}

	/* Determine clock frequency */
	switch (slowclk) {
	case BHND_CLKSRC_LPO:
		hz = max_freq ? CHIPC_LPOMAXFREQ : CHIPC_LPOMINFREQ;
		break;
	case BHND_CLKSRC_XTAL:
		hz = max_freq ? CHIPC_XTALMAXFREQ : CHIPC_XTALMINFREQ;
		break;
	case BHND_CLKSRC_PCI:
		hz = max_freq ? CHIPC_PCIMAXFREQ : CHIPC_PCIMINFREQ;
		break;
	default:
		FUNC4(sc->dev, "unknown slowclk source %#x\n", slowclk);
		return (0);
	}

	return (hz / div);
}