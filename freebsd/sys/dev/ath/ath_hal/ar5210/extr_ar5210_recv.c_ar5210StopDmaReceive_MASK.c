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
struct ath_hal {int dummy; } ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AH_FALSE ; 
 int /*<<< orphan*/  AH_TRUE ; 
 int /*<<< orphan*/  AR_CR ; 
 int /*<<< orphan*/  AR_CR_RXD ; 
 int AR_CR_RXE ; 
 int /*<<< orphan*/  AR_DIAG_SW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,char*,...) ; 

HAL_BOOL
FUNC4(struct ath_hal *ah)
{
	int i;

	FUNC2(ah, AR_CR, AR_CR_RXD);	/* Set receive disable bit */
	for (i = 0; i < 1000; i++) {
		if ((FUNC1(ah, AR_CR) & AR_CR_RXE) == 0)
			return AH_TRUE;
		FUNC0(10);
	}
#ifdef AH_DEBUG
	ath_hal_printf(ah, "ar5210: dma receive failed to stop in 10ms\n");
	ath_hal_printf(ah, "AR_CR=0x%x\n", OS_REG_READ(ah, AR_CR));
	ath_hal_printf(ah, "AR_DIAG_SW=0x%x\n", OS_REG_READ(ah, AR_DIAG_SW));
#endif
	return AH_FALSE;
}