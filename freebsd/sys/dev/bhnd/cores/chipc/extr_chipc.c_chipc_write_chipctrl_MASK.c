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
struct chipc_softc {int /*<<< orphan*/  core; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CHIPC_CHIPCTRL ; 
 int /*<<< orphan*/  FUNC0 (struct chipc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct chipc_softc*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct chipc_softc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(device_t dev, uint32_t value, uint32_t mask)
{
	struct chipc_softc	*sc;
	uint32_t		 cctrl;

	sc = FUNC4(dev);

	FUNC0(sc);

	cctrl = FUNC2(sc->core, CHIPC_CHIPCTRL);
	cctrl = (cctrl & ~mask) | (value | mask);
	FUNC3(sc->core, CHIPC_CHIPCTRL, cctrl);

	FUNC1(sc);
}