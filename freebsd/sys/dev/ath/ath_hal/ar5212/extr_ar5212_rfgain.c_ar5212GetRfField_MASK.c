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
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ MAX_ANALOG_START ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static uint32_t
FUNC2(uint32_t *rfBuf, uint32_t numBits, uint32_t firstBit, uint32_t column)
{
	uint32_t reg32 = 0, mask, arrayEntry, lastBit;
	uint32_t bitPosition, bitsShifted;
	int32_t bitsLeft;

	FUNC0(column <= 3);
	FUNC0(numBits <= 32);
	FUNC0(firstBit + numBits <= MAX_ANALOG_START);

	arrayEntry = (firstBit - 1) / 8;
	bitPosition = (firstBit - 1) % 8;
	bitsLeft = numBits;
	bitsShifted = 0;
	while (bitsLeft > 0) {
		lastBit = (bitPosition + bitsLeft > 8) ?
			(8) : (bitPosition + bitsLeft);
		mask = (((1 << lastBit) - 1) ^ ((1 << bitPosition) - 1)) <<
			(column * 8);
		reg32 |= (((rfBuf[arrayEntry] & mask) >> (column * 8)) >>
			bitPosition) << bitsShifted;
		bitsShifted += lastBit - bitPosition;
		bitsLeft -= (8 - bitPosition);
		bitPosition = 0;
		arrayEntry++;
	}
	reg32 = FUNC1(reg32, numBits);
	return reg32;
}