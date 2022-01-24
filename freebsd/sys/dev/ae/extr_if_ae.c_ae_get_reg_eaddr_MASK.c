#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ ae_softc_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int*) ; 
 int /*<<< orphan*/  AE_EADDR0_REG ; 
 int /*<<< orphan*/  AE_EADDR1_REG ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC3(ae_softc_t *sc, uint32_t *eaddr)
{

	/*
	 * BIOS is supposed to set this.
	 */
	eaddr[0] = FUNC1(sc, AE_EADDR0_REG);
	eaddr[1] = FUNC1(sc, AE_EADDR1_REG);
	eaddr[1] &= 0xffff;	/* Only last 2 bytes are used. */

	if (FUNC0(eaddr) != 0) {
		if (bootverbose)
			FUNC2(sc->dev,
			    "Ethernet address registers are invalid.\n");
		return (EINVAL);
	}
	return (0);
}