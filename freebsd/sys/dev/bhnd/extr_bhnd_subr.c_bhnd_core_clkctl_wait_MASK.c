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
typedef  scalar_t__ u_int ;
struct bhnd_core_clkctl {int cc_quirks; scalar_t__ cc_max_latency; int /*<<< orphan*/  cc_dev; int /*<<< orphan*/  cc_res_offset; int /*<<< orphan*/  cc_res; } ;

/* Variables and functions */
 int BHND_CCS0_ALPAVAIL ; 
 int BHND_CCS0_HTAVAIL ; 
 int BHND_CCS_ALPAVAIL ; 
 int BHND_CCS_HTAVAIL ; 
 int /*<<< orphan*/  FUNC0 (struct bhnd_core_clkctl*,int /*<<< orphan*/ ) ; 
 int BHND_CLKCTL_QUIRK_CCS0 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 

int
FUNC4(struct bhnd_core_clkctl *clkctl, uint32_t value,
    uint32_t mask)
{
	uint32_t	clkst;

	FUNC0(clkctl, MA_OWNED);

	/* Bitswapped HTAVAIL/ALPAVAIL work-around */
	if (clkctl->cc_quirks & BHND_CLKCTL_QUIRK_CCS0) {
		uint32_t fmask, fval;

		fmask = mask & ~(BHND_CCS_HTAVAIL | BHND_CCS_ALPAVAIL);
		fval = value & ~(BHND_CCS_HTAVAIL | BHND_CCS_ALPAVAIL);

		if (mask & BHND_CCS_HTAVAIL)
			fmask |= BHND_CCS0_HTAVAIL;
		if (value & BHND_CCS_HTAVAIL)
			fval |= BHND_CCS0_HTAVAIL;

		if (mask & BHND_CCS_ALPAVAIL) 
			fmask |= BHND_CCS0_ALPAVAIL;
		if (value & BHND_CCS_ALPAVAIL)
			fval |= BHND_CCS0_ALPAVAIL;

		mask = fmask;
		value = fval;
	}

	for (u_int i = 0; i < clkctl->cc_max_latency; i += 10) {
		clkst = FUNC2(clkctl->cc_res, clkctl->cc_res_offset);
		if ((clkst & mask) == (value & mask))
			return (0);

		FUNC1(10);
	}

	FUNC3(clkctl->cc_dev, "clkst wait timeout (value=%#x, "
	    "mask=%#x)\n", value, mask);

	return (ETIMEDOUT);
}