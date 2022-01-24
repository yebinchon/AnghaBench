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
struct jz4780_efuse_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct jz4780_efuse_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct jz4780_efuse_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  JZ_EFUCTRL ; 
 scalar_t__ JZ_EFUDATA0 ; 
 int JZ_EFUSE_ADDR_SHIFT ; 
 int JZ_EFUSE_BANK ; 
 int JZ_EFUSE_BANK_SIZE ; 
 int JZ_EFUSE_RD_DONE ; 
 int JZ_EFUSE_READ ; 
 int JZ_EFUSE_SIZE_SHIFT ; 
 scalar_t__ JZ_EFUSTATE ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 

__attribute__((used)) static void
FUNC4(struct jz4780_efuse_softc *sc, int addr, uint8_t *buf, int len)
{
	uint32_t abuf;
	int i, count;

	/* Setup to read proper bank */
	FUNC1(sc, JZ_EFUCTRL, JZ_EFUSE_READ |
	    (addr < JZ_EFUSE_BANK_SIZE ? 0: JZ_EFUSE_BANK) |
	    (addr << JZ_EFUSE_ADDR_SHIFT) |
	    ((len - 1) << JZ_EFUSE_SIZE_SHIFT));
	/* Wait for read to complete */
	while ((FUNC0(sc, JZ_EFUSTATE) & JZ_EFUSE_RD_DONE) == 0)
		FUNC2(1000);

	/* Round to 4 bytes for the simple loop below */
	count = len & ~3;

	for (i = 0; i < count; i += 4) {
		abuf = FUNC0(sc, JZ_EFUDATA0 + i);
		FUNC3(buf, &abuf, 4);
		buf += 4;
	}

	/* Read partial word and assign it byte-by-byte */
	if (i < len) {
		abuf = FUNC0(sc, JZ_EFUDATA0 + i);
		for (/* none */; i < len; i++) {
			buf[i] = abuf & 0xff;
			abuf >>= 8;
		}
	}
}