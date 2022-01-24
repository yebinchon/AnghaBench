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
typedef  scalar_t__ uint16_t ;
struct ath_hal {int dummy; } ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AH_FALSE ; 
 int /*<<< orphan*/  AH_TRUE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ AR_KEYTABLE_SIZE ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

HAL_BOOL
FUNC9(struct ath_hal *ah, uint16_t entry)
{
	if (entry < AR_KEYTABLE_SIZE) {
		FUNC8(ah, FUNC0(entry), 0);
		FUNC8(ah, FUNC1(entry), 0);
		FUNC8(ah, FUNC2(entry), 0);
		FUNC8(ah, FUNC3(entry), 0);
		FUNC8(ah, FUNC4(entry), 0);
		FUNC8(ah, FUNC7(entry), 0);
		FUNC8(ah, FUNC5(entry), 0);
		FUNC8(ah, FUNC6(entry), 0);
		return AH_TRUE;
	}
	return AH_FALSE;
}