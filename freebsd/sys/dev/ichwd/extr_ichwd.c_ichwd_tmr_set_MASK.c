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
typedef  int uint8_t ;
typedef  int uint16_t ;
struct ichwd_softc {int tco_version; unsigned int timeout; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int TCO_RLD1_TMR_MAX ; 
 int TCO_RLD2_TMR_MAX ; 
 unsigned int TCO_RLD_TMR_MIN ; 
 int /*<<< orphan*/  TCO_TMR1 ; 
 int /*<<< orphan*/  TCO_TMR2 ; 
 int FUNC0 (struct ichwd_softc*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ichwd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct ichwd_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ichwd_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static __inline void
FUNC5(struct ichwd_softc *sc, unsigned int timeout)
{

	if (timeout < TCO_RLD_TMR_MIN)
		timeout = TCO_RLD_TMR_MIN;

	if (sc->tco_version == 1) {
		uint8_t tmr_val8 = FUNC0(sc, TCO_TMR1);

		tmr_val8 &= (~TCO_RLD1_TMR_MAX & 0xff);
		if (timeout > TCO_RLD1_TMR_MAX)
			timeout = TCO_RLD1_TMR_MAX;
		tmr_val8 |= timeout;
		FUNC3(sc, TCO_TMR1, tmr_val8);
	} else {
		uint16_t tmr_val16 = FUNC1(sc, TCO_TMR2);

		tmr_val16 &= (~TCO_RLD2_TMR_MAX & 0xffff);
		if (timeout > TCO_RLD2_TMR_MAX)
			timeout = TCO_RLD2_TMR_MAX;
		tmr_val16 |= timeout;
		FUNC4(sc, TCO_TMR2, tmr_val16);
	}

	sc->timeout = timeout;

	FUNC2(sc->device, "timeout set to %u ticks\n", timeout);
}