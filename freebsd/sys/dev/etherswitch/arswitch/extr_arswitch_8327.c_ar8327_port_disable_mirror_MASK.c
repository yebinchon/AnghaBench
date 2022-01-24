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
struct arswitch_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR8327_PORT_HOL_CTRL1_EG_MIRROR_EN ; 
 int /*<<< orphan*/  AR8327_PORT_LOOKUP_ING_MIRROR_EN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct arswitch_softc *sc, int port)
{

	FUNC2(sc->sc_dev,
	    FUNC1(port),
	    AR8327_PORT_LOOKUP_ING_MIRROR_EN,
	    0);
	FUNC2(sc->sc_dev,
	    FUNC0(port),
	    AR8327_PORT_HOL_CTRL1_EG_MIRROR_EN,
	    0);
}