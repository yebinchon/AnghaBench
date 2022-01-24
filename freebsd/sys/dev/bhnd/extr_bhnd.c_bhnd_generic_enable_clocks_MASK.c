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
struct bhnd_softc {int dummy; } ;
struct bhnd_core_clkctl {int /*<<< orphan*/  cc_dev; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bhnd_core_clkctl*) ; 
 int BHND_CCS_ALPAREQ ; 
 int BHND_CCS_ALPAVAIL ; 
 int /*<<< orphan*/  BHND_CCS_AREQ_MASK ; 
 int BHND_CCS_HTAREQ ; 
 int BHND_CCS_HTAVAIL ; 
 int /*<<< orphan*/  FUNC1 (struct bhnd_core_clkctl*) ; 
 int /*<<< orphan*/  FUNC2 (struct bhnd_core_clkctl*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bhnd_core_clkctl*) ; 
 int BHND_CLOCK_ALP ; 
 int BHND_CLOCK_DYN ; 
 int BHND_CLOCK_HT ; 
 int BHND_CLOCK_ILP ; 
 int EINVAL ; 
 int ENODEV ; 
 int FUNC4 (struct bhnd_core_clkctl*,int,int) ; 
 struct bhnd_core_clkctl* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 struct bhnd_softc* FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

int
FUNC11(device_t dev, device_t child, uint32_t clocks)
{
	struct bhnd_softc	*sc;
	struct bhnd_core_clkctl	*clkctl;
	uint32_t		 avail;
	uint32_t		 req;
	int			 error;

	sc = FUNC8(dev);

	if (FUNC7(child) != dev)
		return (EINVAL);

	if ((clkctl = FUNC5(child)) == NULL)
		FUNC10("no active PMU allocation");

	FUNC0(clkctl);

	sc = FUNC8(dev);

	avail = 0x0;
	req = 0x0;

	/* Build clock request flags */
	if (clocks & BHND_CLOCK_DYN)		/* nothing to enable */
		clocks &= ~BHND_CLOCK_DYN;

	if (clocks & BHND_CLOCK_ILP)		/* nothing to enable */
		clocks &= ~BHND_CLOCK_ILP;

	if (clocks & BHND_CLOCK_ALP) {
		req |= BHND_CCS_ALPAREQ;
		avail |= BHND_CCS_ALPAVAIL;
		clocks &= ~BHND_CLOCK_ALP;
	}

	if (clocks & BHND_CLOCK_HT) {
		req |= BHND_CCS_HTAREQ;
		avail |= BHND_CCS_HTAVAIL;
		clocks &= ~BHND_CLOCK_HT;
	}

	/* Check for unknown clock values */
	if (clocks != 0x0) {
		FUNC9(dev, "%s requested unknown clocks: %#x\n",
		    FUNC6(clkctl->cc_dev), clocks);
		return (ENODEV);
	}

	FUNC1(clkctl);

	/* Issue request */
	FUNC2(clkctl, req, BHND_CCS_AREQ_MASK);

	/* Wait for clock availability */
	error = FUNC4(clkctl, avail, avail);

	FUNC3(clkctl);

	return (error);
}