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
struct ath_hal {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,int) ; 

uint32_t
FUNC4(struct ath_hal *ah)
{
	uint32_t val;
	int i;

	/* Read Radio Chip Rev Extract */
	FUNC2(ah, FUNC0(0x34), 0x00001c16);
	for (i = 0; i < 8; i++)
		FUNC2(ah, FUNC0(0x20), 0x00010000);
	val = (FUNC1(ah, FUNC0(256)) >> 24) & 0xff;
	val = ((val & 0xf0) >> 4) | ((val & 0x0f) << 4);
	return FUNC3(val, 8);
}