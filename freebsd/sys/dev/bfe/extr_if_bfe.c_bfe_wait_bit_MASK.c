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
typedef  scalar_t__ u_long ;
typedef  int u_int32_t ;
struct bfe_softc {int /*<<< orphan*/  bfe_dev; } ;

/* Variables and functions */
 int FUNC0 (struct bfe_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,char*) ; 

__attribute__((used)) static int
FUNC3(struct bfe_softc *sc, u_int32_t reg, u_int32_t bit,
		u_long timeout, const int clear)
{
	u_long i;

	for (i = 0; i < timeout; i++) {
		u_int32_t val = FUNC0(sc, reg);

		if (clear && !(val & bit))
			break;
		if (!clear && (val & bit))
			break;
		FUNC1(10);
	}
	if (i == timeout) {
		FUNC2(sc->bfe_dev,
		    "BUG!  Timeout waiting for bit %08x of register "
		    "%x to %s.\n", bit, reg, (clear ? "clear" : "set"));
		return (-1);
	}
	return (0);
}