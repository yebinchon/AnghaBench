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
typedef  int /*<<< orphan*/  u_int32_t ;
struct auxio_softc {int sc_flags; int /*<<< orphan*/ * sc_regh; int /*<<< orphan*/ * sc_regt; } ;

/* Variables and functions */
 int AUXIO_EBUS ; 
 size_t AUXIO_PCIO_LED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline u_int32_t
FUNC2(struct auxio_softc *sc)
{
	u_int32_t led;

	if (sc->sc_flags & AUXIO_EBUS)
		led = FUNC1(sc->sc_regt[AUXIO_PCIO_LED],
		    sc->sc_regh[AUXIO_PCIO_LED], 0);
	else
		led = FUNC0(sc->sc_regt[AUXIO_PCIO_LED],
		    sc->sc_regh[AUXIO_PCIO_LED], 0);

	return (led);
}