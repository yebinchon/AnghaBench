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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct rsu_softc {int* rom; } ;

/* Variables and functions */
 int EIO ; 
 int R92S_9356SEL ; 
 int R92S_EEPROM_EN ; 
 scalar_t__ R92S_EE_9346CR ; 
 scalar_t__ R92S_EFUSE_TEST ; 
 int RSU_DEBUG_RESET ; 
 int /*<<< orphan*/  FUNC0 (int**,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int rsu_debug ; 
 int FUNC2 (struct rsu_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rsu_softc*,int) ; 
 int FUNC4 (struct rsu_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct rsu_softc*,scalar_t__,int) ; 

__attribute__((used)) static int
FUNC6(struct rsu_softc *sc)
{
	uint8_t *rom = sc->rom;
	uint16_t addr = 0;
	uint32_t reg;
	uint8_t off, msk;
	int i;

	/* Make sure that ROM type is eFuse and that autoload succeeded. */
	reg = FUNC4(sc, R92S_EE_9346CR);
	if ((reg & (R92S_9356SEL | R92S_EEPROM_EN)) != R92S_EEPROM_EN)
		return (EIO);

	/* Turn on 2.5V to prevent eFuse leakage. */
	reg = FUNC4(sc, R92S_EFUSE_TEST + 3);
	FUNC5(sc, R92S_EFUSE_TEST + 3, reg | 0x80);
	FUNC3(sc, 1);
	FUNC5(sc, R92S_EFUSE_TEST + 3, reg & ~0x80);

	/* Read full ROM image. */
	FUNC0(&sc->rom, 0xff, sizeof(sc->rom));
	while (addr < 512) {
		reg = FUNC2(sc, addr);
		if (reg == 0xff)
			break;
		addr++;
		off = reg >> 4;
		msk = reg & 0xf;
		for (i = 0; i < 4; i++) {
			if (msk & (1 << i))
				continue;
			rom[off * 8 + i * 2 + 0] =
			    FUNC2(sc, addr);
			addr++;
			rom[off * 8 + i * 2 + 1] =
			    FUNC2(sc, addr);
			addr++;
		}
	}
#ifdef USB_DEBUG
	if (rsu_debug & RSU_DEBUG_RESET) {
		/* Dump ROM content. */
		printf("\n");
		for (i = 0; i < sizeof(sc->rom); i++)
			printf("%02x:", rom[i]);
		printf("\n");
	}
#endif
	return (0);
}