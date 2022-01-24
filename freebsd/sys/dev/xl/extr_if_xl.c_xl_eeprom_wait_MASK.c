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
struct xl_softc {int /*<<< orphan*/  xl_dev; } ;

/* Variables and functions */
 int FUNC0 (struct xl_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int XL_EE_BUSY ; 
 int /*<<< orphan*/  XL_W0_EE_CMD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC3(struct xl_softc *sc)
{
	int			i;

	for (i = 0; i < 100; i++) {
		if (FUNC0(sc, XL_W0_EE_CMD) & XL_EE_BUSY)
			FUNC1(162);
		else
			break;
	}

	if (i == 100) {
		FUNC2(sc->xl_dev, "eeprom failed to come ready\n");
		return (1);
	}

	return (0);
}