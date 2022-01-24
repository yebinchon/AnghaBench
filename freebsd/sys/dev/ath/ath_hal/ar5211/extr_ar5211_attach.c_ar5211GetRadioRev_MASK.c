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
 scalar_t__ AR_PHY_BASE ; 
 int FUNC0 (struct ath_hal*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,scalar_t__,int) ; 
 int FUNC2 (int,int) ; 

__attribute__((used)) static uint32_t
FUNC3(struct ath_hal *ah)
{
	uint32_t val;
	int i;

	FUNC1(ah, (AR_PHY_BASE + (0x34 << 2)), 0x00001c16);
	for (i = 0; i < 8; i++)
		FUNC1(ah, (AR_PHY_BASE + (0x20 << 2)), 0x00010000);
	val = (FUNC0(ah, AR_PHY_BASE + (256 << 2)) >> 24) & 0xff;
	val = ((val & 0xf0) >> 4) | ((val & 0x0f) << 4);
	return FUNC2(val, 8);
}