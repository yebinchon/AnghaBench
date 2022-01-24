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
typedef  int bhnd_clock ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bhnd_core_clkctl*) ; 
 int BHND_CCS_ALPAVAIL ; 
 int BHND_CCS_FORCEALP ; 
 int BHND_CCS_FORCEHT ; 
 int BHND_CCS_FORCEILP ; 
 int /*<<< orphan*/  BHND_CCS_FORCE_MASK ; 
 int BHND_CCS_HTAVAIL ; 
 int /*<<< orphan*/  FUNC1 (struct bhnd_core_clkctl*) ; 
 int /*<<< orphan*/  FUNC2 (struct bhnd_core_clkctl*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bhnd_core_clkctl*) ; 
#define  BHND_CLOCK_ALP 131 
#define  BHND_CLOCK_DYN 130 
#define  BHND_CLOCK_HT 129 
#define  BHND_CLOCK_ILP 128 
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
FUNC11(device_t dev, device_t child, bhnd_clock clock)
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

	avail = 0x0;
	req = 0x0;

	switch (clock) {
	case BHND_CLOCK_DYN:
		break;
	case BHND_CLOCK_ILP:
		req |= BHND_CCS_FORCEILP;
		break;
	case BHND_CLOCK_ALP:
		req |= BHND_CCS_FORCEALP;
		avail |= BHND_CCS_ALPAVAIL;
		break;
	case BHND_CLOCK_HT:
		req |= BHND_CCS_FORCEHT;
		avail |= BHND_CCS_HTAVAIL;
		break;
	default:
		FUNC9(dev, "%s requested unknown clock: %#x\n",
		    FUNC6(clkctl->cc_dev), clock);
		return (ENODEV);
	}

	FUNC1(clkctl);

	/* Issue request */
	FUNC2(clkctl, req, BHND_CCS_FORCE_MASK);

	/* Wait for clock availability */
	error = FUNC4(clkctl, avail, avail);

	FUNC3(clkctl);

	return (error);
}