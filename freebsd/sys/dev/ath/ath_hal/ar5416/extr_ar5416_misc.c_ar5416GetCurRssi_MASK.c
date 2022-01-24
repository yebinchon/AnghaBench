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
 int /*<<< orphan*/  AR9130_PHY_CURRENT_RSSI ; 
 int /*<<< orphan*/  AR_PHY_CURRENT_RSSI ; 
 scalar_t__ FUNC0 (struct ath_hal*) ; 
 int FUNC1 (struct ath_hal*,int /*<<< orphan*/ ) ; 

uint32_t
FUNC2(struct ath_hal *ah)
{
	if (FUNC0(ah))
		return (FUNC1(ah, AR_PHY_CURRENT_RSSI) & 0xff);
	return (FUNC1(ah, AR9130_PHY_CURRENT_RSSI) & 0xff);
}