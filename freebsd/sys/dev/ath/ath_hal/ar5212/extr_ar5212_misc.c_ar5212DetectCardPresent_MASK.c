#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int uint16_t ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_macVersion; int ah_macRev; } ;
typedef  int HAL_BOOL ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_SREV ; 
 int AR_SREV_ID ; 
 int AR_SREV_ID_S ; 
 int AR_SREV_REVISION ; 
 int FUNC1 (struct ath_hal*,int /*<<< orphan*/ ) ; 

HAL_BOOL
FUNC2(struct ath_hal *ah)
{
	uint16_t macVersion, macRev;
	uint32_t v;

	/*
	 * Read the Silicon Revision register and compare that
	 * to what we read at attach time.  If the same, we say
	 * a card/device is present.
	 */
	v = FUNC1(ah, AR_SREV) & AR_SREV_ID;
	macVersion = v >> AR_SREV_ID_S;
	macRev = v & AR_SREV_REVISION;
	return (FUNC0(ah)->ah_macVersion == macVersion &&
		FUNC0(ah)->ah_macRev == macRev);
}