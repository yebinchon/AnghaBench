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
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (struct ure_softc*,int,int,int**,int) ; 

__attribute__((used)) static uint16_t
FUNC2(struct ure_softc *sc, uint16_t reg, uint16_t index)
{
	uint32_t val;
	uint8_t temp[4];
	uint8_t shift;

	shift = (reg & 2) << 3;
	reg &= ~3;

	FUNC1(sc, reg, index, &temp, 4);
	val = FUNC0(temp);
	val >>= shift;

	return (val & 0xffff);
}