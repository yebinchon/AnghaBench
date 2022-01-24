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
struct iicbb_softc {int /*<<< orphan*/  scl_low_timeout; int /*<<< orphan*/  udelay; int /*<<< orphan*/  iicbus; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  CTLFLAG_RWTUN ; 
 int /*<<< orphan*/  DEFAULT_SCL_LOW_TIMEOUT ; 
 int ENXIO ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct iicbb_softc *sc = (struct iicbb_softc *)FUNC4(dev);

	sc->iicbus = FUNC3(dev, "iicbus", -1);
	if (!sc->iicbus)
		return (ENXIO);

	sc->scl_low_timeout = DEFAULT_SCL_LOW_TIMEOUT;

	FUNC0(FUNC5(dev),
	    FUNC1(FUNC6(dev)), OID_AUTO,
	    "delay", CTLFLAG_RD, &sc->udelay,
	    0, "Signal change delay controlled by bus frequency, microseconds");

	FUNC0(FUNC5(dev),
	    FUNC1(FUNC6(dev)), OID_AUTO,
	    "scl_low_timeout", CTLFLAG_RWTUN, &sc->scl_low_timeout,
	    0, "SCL low timeout, microseconds");
	FUNC2(dev);
	return (0);
}