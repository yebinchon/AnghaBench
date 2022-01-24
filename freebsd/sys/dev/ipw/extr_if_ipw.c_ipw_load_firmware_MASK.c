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
typedef  char uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct ipw_softc {int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_mtx; } ;

/* Variables and functions */
 int FUNC0 (struct ipw_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipw_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  IPW_CSR_CTL ; 
 int /*<<< orphan*/  IPW_CSR_INTR_MASK ; 
 int /*<<< orphan*/  IPW_CSR_IO ; 
 int /*<<< orphan*/  IPW_CSR_RST ; 
 int IPW_CTL_ALLOW_STANDBY ; 
 int IPW_INTR_MASK ; 
 int IPW_IO_GPIO1_ENABLE ; 
 int IPW_IO_GPIO1_MASK ; 
 int IPW_IO_GPIO3_MASK ; 
 int IPW_IO_LED_OFF ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC5 (struct ipw_softc*,int,char const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ipw_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct ipw_softc *sc, const char *fw, int size)
{
	const uint8_t *p, *end;
	uint32_t tmp, dst;
	uint16_t len;
	int error;

	p = fw;
	end = fw + size;
	while (p < end) {
		dst = FUNC3(p); p += 4;
		len = FUNC2(p); p += 2;

		FUNC5(sc, dst, p, len);
		p += len;
	}

	FUNC1(sc, IPW_CSR_IO, IPW_IO_GPIO1_ENABLE | IPW_IO_GPIO3_MASK |
	    IPW_IO_LED_OFF);

	/* enable interrupts */
	FUNC1(sc, IPW_CSR_INTR_MASK, IPW_INTR_MASK);

	/* kick the firmware */
	FUNC1(sc, IPW_CSR_RST, 0);

	tmp = FUNC0(sc, IPW_CSR_CTL);
	FUNC1(sc, IPW_CSR_CTL, tmp | IPW_CTL_ALLOW_STANDBY);

	/* wait at most one second for firmware initialization to complete */
	if ((error = FUNC6(sc, &sc->sc_mtx, 0, "ipwinit", hz)) != 0) {
		FUNC4(sc->sc_dev, "timeout waiting for firmware "
		    "initialization to complete\n");
		return error;
	}

	tmp = FUNC0(sc, IPW_CSR_IO);
	FUNC1(sc, IPW_CSR_IO, tmp | IPW_IO_GPIO1_MASK |
	    IPW_IO_GPIO3_MASK);

	return 0;
}