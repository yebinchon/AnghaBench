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
typedef  int u_int32_t ;
typedef  int u_int ;
struct grackle_softc {int /*<<< orphan*/  sc_addr; } ;

/* Variables and functions */
 int GRACKLE_CFG_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(struct grackle_softc *sc, u_int bus, u_int slot,
    u_int func, u_int reg)
{
	u_int32_t	cfgval;

	/*
	 * Unlike UniNorth, the format of the config word is the same
	 * for local (0) and remote busses.
	 */
	cfgval = (bus << 16) | (slot << 11) | (func << 8) | (reg & 0xFC)
	    | GRACKLE_CFG_ENABLE;

	FUNC1(sc->sc_addr, cfgval);
	(void) FUNC0(sc->sc_addr);

	return (1);
}