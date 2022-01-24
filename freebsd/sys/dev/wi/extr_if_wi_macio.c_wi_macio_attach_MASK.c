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
struct wi_softc {scalar_t__ wi_bus_type; scalar_t__ wi_gone; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  WI_EVENT_ACK ; 
 int /*<<< orphan*/  WI_INT_EN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct wi_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct wi_softc	*sc;
	int error;

	sc = FUNC2(dev);
	sc->wi_gone = 0;
	sc->wi_bus_type = 0;

	error = FUNC4(dev, 0);
	if (error == 0) {
		FUNC3(FUNC1(dev), 1);
		/* Make sure interrupts are disabled. */
		FUNC0(sc, WI_INT_EN, 0);
		FUNC0(sc, WI_EVENT_ACK, 0xFFFF);

		error = FUNC5(dev);
		if (error != 0)
			FUNC6(dev);
	}
	return error;
}