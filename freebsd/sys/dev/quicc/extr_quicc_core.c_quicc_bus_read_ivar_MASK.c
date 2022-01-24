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
struct quicc_softc {uintptr_t sc_clock; int /*<<< orphan*/  sc_rres; } ;
struct quicc_device {uintptr_t qd_devtype; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int EINVAL ; 
#define  QUICC_IVAR_BRGCLK 130 
#define  QUICC_IVAR_CLOCK 129 
#define  QUICC_IVAR_DEVTYPE 128 
 int /*<<< orphan*/  QUICC_REG_SCCR ; 
 struct quicc_device* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 struct quicc_softc* FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC4(device_t dev, device_t child, int index, uintptr_t *result)
{
	struct quicc_device *qd;
	struct quicc_softc *sc;
	uint32_t sccr;

	if (FUNC1(child) != dev)
		return (EINVAL);

	sc = FUNC2(dev);
	qd = FUNC0(child);

	switch (index) {
	case QUICC_IVAR_CLOCK:
		*result = sc->sc_clock;
		break;
	case QUICC_IVAR_BRGCLK:
		sccr = FUNC3(sc->sc_rres, QUICC_REG_SCCR) & 3;
		*result = sc->sc_clock / ((1 << (sccr + 1)) << sccr);
		break;
	case QUICC_IVAR_DEVTYPE:
		*result = qd->qd_devtype;
		break;
	default:
		return (EINVAL);
	}
	return (0);
}