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
struct twsi_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  reg_control; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct twsi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int
FUNC3(struct twsi_softc *sc, int timeout, uint32_t mask)
{

	timeout /= 10;
	FUNC2(sc->dev, "Waiting for ctrl reg to match mask %x\n", mask);
	while (!(FUNC1(sc, sc->reg_control) & mask)) {
		FUNC0(10);
		if (--timeout < 0)
			return (timeout);
	}
	FUNC2(sc->dev, "done\n");
	return (0);
}