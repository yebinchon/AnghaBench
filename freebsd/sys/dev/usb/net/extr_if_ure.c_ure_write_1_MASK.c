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
struct ure_softc {int dummy; } ;

/* Variables and functions */
 int URE_BYTE_EN_BYTE ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int FUNC1 (struct ure_softc*,int,int,int**,int) ; 

__attribute__((used)) static int
FUNC2(struct ure_softc *sc, uint16_t reg, uint16_t index, uint32_t val)
{
	uint16_t byen;
	uint8_t temp[4];
	uint8_t shift;

	byen = URE_BYTE_EN_BYTE;
	shift = reg & 3;
	val &= 0xff;

	if (reg & 3) {
		byen <<= shift;
		val <<= (shift << 3);
		reg &= ~3;
	}

	FUNC0(temp, val);
	return (FUNC1(sc, reg, index | byen, &temp, 4));
}