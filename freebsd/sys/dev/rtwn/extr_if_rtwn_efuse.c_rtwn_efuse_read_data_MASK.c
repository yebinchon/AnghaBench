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
struct rtwn_softc {int efuse_maplen; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  RTWN_DEBUG_ROM ; 
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*,int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC1 (struct rtwn_softc*,int*) ; 

__attribute__((used)) static int
FUNC2(struct rtwn_softc *sc, uint8_t *rom, uint8_t off,
    uint8_t msk)
{
	uint8_t reg;
	int addr, i, error;

	for (i = 0; i < 4; i++) {
		if (msk & (1 << i))
			continue;

		addr = off * 8 + i * 2;
		if (addr + 1 >= sc->efuse_maplen)
			return (EFAULT);

		error = FUNC1(sc, &reg);
		if (error != 0)
			return (error);
		FUNC0(sc, RTWN_DEBUG_ROM, "rom[0x%03X] == 0x%02X\n",
		    addr, reg);
		rom[addr] = reg;

		error = FUNC1(sc, &reg);
		if (error != 0)
			return (error);
		FUNC0(sc, RTWN_DEBUG_ROM, "rom[0x%03X] == 0x%02X\n",
		    addr + 1, reg);
		rom[addr + 1] = reg;
	}

	return (0);
}