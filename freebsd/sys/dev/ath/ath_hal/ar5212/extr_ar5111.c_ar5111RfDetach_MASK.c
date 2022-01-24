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
struct ath_hal_5212 {scalar_t__ ah_rfHal; } ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 struct ath_hal_5212* FUNC0 (struct ath_hal*) ; 
 scalar_t__ AH_NULL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void
FUNC3(struct ath_hal *ah)
{
	struct ath_hal_5212 *ahp = FUNC0(ah);

	FUNC1(ahp->ah_rfHal != AH_NULL);
	FUNC2(ahp->ah_rfHal);
	ahp->ah_rfHal = AH_NULL;
}