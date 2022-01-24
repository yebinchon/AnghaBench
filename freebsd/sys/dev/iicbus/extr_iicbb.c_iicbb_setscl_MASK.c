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
struct iicbb_softc {int scl_low_timeout; scalar_t__ udelay; } ;
typedef  scalar_t__ sbintime_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  SBT_1MS ; 
 int SBT_1US ; 
 struct iicbb_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 

__attribute__((used)) static void
FUNC8(device_t dev, int val)
{
	struct iicbb_softc *sc = FUNC5(dev);
	sbintime_t now, end;
	int fast_timeout;

	FUNC3(dev, val);
	FUNC1(sc->udelay);

	/* Pulling low cannot fail. */
	if (!val)
		return;

	/* Use DELAY for up to 1 ms, then switch to pause. */
	end = FUNC7() + sc->scl_low_timeout * SBT_1US;
	fast_timeout = FUNC4(sc->scl_low_timeout, 1000);
	while (fast_timeout > 0) {
		if (FUNC2(dev))
			return;
		FUNC3(dev, 1);	/* redundant ? */
		FUNC1(sc->udelay);
		fast_timeout -= sc->udelay;
	}

	while (!FUNC2(dev)) {
		now = FUNC7();
		if (now >= end)
			break;
		FUNC6("iicbb-scl-low", SBT_1MS, FUNC0(8), 0);
	}

}