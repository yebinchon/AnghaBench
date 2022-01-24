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
typedef  int /*<<< orphan*/  uint32_t ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_MCAST_FIL0 ; 
 int /*<<< orphan*/  AR_MCAST_FIL1 ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC1(struct ath_hal *ah, uint32_t filter0, uint32_t filter1)
{
	FUNC0(ah, AR_MCAST_FIL0, filter0);
	FUNC0(ah, AR_MCAST_FIL1, filter1);
}