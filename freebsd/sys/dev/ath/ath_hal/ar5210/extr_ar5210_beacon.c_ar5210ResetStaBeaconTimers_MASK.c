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
 int /*<<< orphan*/  AR_BEACON ; 
 int AR_BEACON_PERIOD ; 
 int /*<<< orphan*/  AR_STA_ID1 ; 
 int AR_STA_ID1_DEFAULT_ANTENNA ; 
 int AR_STA_ID1_NO_PSPOLL ; 
 int AR_STA_ID1_PCF ; 
 int /*<<< orphan*/  AR_TIMER0 ; 
 int FUNC0 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 

void
FUNC2(struct ath_hal *ah)
{
	uint32_t val;

	FUNC1(ah, AR_TIMER0, 0);		/* no beacons */
	val = FUNC0(ah, AR_STA_ID1);
	val |= AR_STA_ID1_NO_PSPOLL;		/* XXX */
	/* tell the h/w that the associated AP is not PCF capable */
	FUNC1(ah, AR_STA_ID1,
		val & ~(AR_STA_ID1_DEFAULT_ANTENNA | AR_STA_ID1_PCF));
	FUNC1(ah, AR_BEACON, AR_BEACON_PERIOD);
}