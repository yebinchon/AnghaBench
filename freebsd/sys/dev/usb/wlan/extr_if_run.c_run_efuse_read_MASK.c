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
typedef  int uint16_t ;
struct run_softc {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int RT3070_EFSROM_AIN_MASK ; 
 int RT3070_EFSROM_AIN_SHIFT ; 
 int RT3070_EFSROM_KICK ; 
 int RT3070_EFSROM_MODE_MASK ; 
 int RT3070_EFUSE_AOUT_MASK ; 
 int RT3070_EFUSE_CTRL ; 
 int RT3070_EFUSE_DATA3 ; 
 int /*<<< orphan*/  FUNC0 (struct run_softc*,int) ; 
 int FUNC1 (struct run_softc*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct run_softc*,int,int) ; 

__attribute__((used)) static int
FUNC3(struct run_softc *sc, uint16_t addr, uint16_t *val, int count)
{
	uint32_t tmp;
	uint16_t reg;
	int error, ntries;

	if ((error = FUNC1(sc, RT3070_EFUSE_CTRL, &tmp)) != 0)
		return (error);

	if (count == 2)
		addr *= 2;
	/*-
	 * Read one 16-byte block into registers EFUSE_DATA[0-3]:
	 * DATA0: F E D C
	 * DATA1: B A 9 8
	 * DATA2: 7 6 5 4
	 * DATA3: 3 2 1 0
	 */
	tmp &= ~(RT3070_EFSROM_MODE_MASK | RT3070_EFSROM_AIN_MASK);
	tmp |= (addr & ~0xf) << RT3070_EFSROM_AIN_SHIFT | RT3070_EFSROM_KICK;
	FUNC2(sc, RT3070_EFUSE_CTRL, tmp);
	for (ntries = 0; ntries < 100; ntries++) {
		if ((error = FUNC1(sc, RT3070_EFUSE_CTRL, &tmp)) != 0)
			return (error);
		if (!(tmp & RT3070_EFSROM_KICK))
			break;
		FUNC0(sc, 2);
	}
	if (ntries == 100)
		return (ETIMEDOUT);

	if ((tmp & RT3070_EFUSE_AOUT_MASK) == RT3070_EFUSE_AOUT_MASK) {
		*val = 0xffff;	/* address not found */
		return (0);
	}
	/* determine to which 32-bit register our 16-bit word belongs */
	reg = RT3070_EFUSE_DATA3 - (addr & 0xc);
	if ((error = FUNC1(sc, reg, &tmp)) != 0)
		return (error);

	tmp >>= (8 * (addr & 0x3));
	*val = (addr & 1) ? tmp >> 16 : tmp & 0xffff;

	return (0);
}