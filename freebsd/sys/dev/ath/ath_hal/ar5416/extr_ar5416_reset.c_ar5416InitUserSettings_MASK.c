#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct ath_hal_5212 {int ah_miscMode; scalar_t__ ah_sifstime; scalar_t__ ah_slottime; scalar_t__ ah_acktimeout; scalar_t__ ah_ctstimeout; } ;
struct ath_hal {int dummy; } ;
struct TYPE_4__ {scalar_t__ ah_globaltxtimeout; } ;
struct TYPE_3__ {int ah_diagreg; } ;

/* Variables and functions */
 struct ath_hal_5212* FUNC0 (struct ath_hal*) ; 
 TYPE_2__* FUNC1 (struct ath_hal*) ; 
 TYPE_1__* FUNC2 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_DIAG_SW ; 
 int /*<<< orphan*/  AR_MISC_MODE ; 
 int FUNC3 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hal*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hal*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hal*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hal*,scalar_t__) ; 

__attribute__((used)) static void
FUNC10(struct ath_hal *ah)
{
	struct ath_hal_5212 *ahp = FUNC0(ah);

	/* Restore user-specified settings */
	if (ahp->ah_miscMode != 0)
		FUNC4(ah, AR_MISC_MODE, FUNC3(ah, AR_MISC_MODE)
		    | ahp->ah_miscMode);
	if (ahp->ah_sifstime != (u_int) -1)
		FUNC7(ah, ahp->ah_sifstime);
	if (ahp->ah_slottime != (u_int) -1)
		FUNC8(ah, ahp->ah_slottime);
	if (ahp->ah_acktimeout != (u_int) -1)
		FUNC5(ah, ahp->ah_acktimeout);
	if (ahp->ah_ctstimeout != (u_int) -1)
		FUNC6(ah, ahp->ah_ctstimeout);
	if (FUNC2(ah)->ah_diagreg != 0)
		FUNC4(ah, AR_DIAG_SW, FUNC2(ah)->ah_diagreg);
	if (FUNC1(ah)->ah_globaltxtimeout != (u_int) -1)
        	FUNC9(ah, FUNC1(ah)->ah_globaltxtimeout);
}