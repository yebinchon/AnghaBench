#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ath_hal {int dummy; } ;
struct TYPE_4__ {int cols; int rows; } ;
typedef  TYPE_1__ HAL_INI_ARRAY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__ const*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int,int) ; 

int
FUNC5(struct ath_hal *ah, const HAL_INI_ARRAY *ia,
	int col, int regWr)
{
	int r;

	FUNC1(col < ia->cols);
	for (r = 0; r < ia->rows; r++) {
		FUNC4(ah, FUNC2(ia, r, 0),
		    FUNC2(ia, r, col));

		/* Analog shift register delay seems needed for Merlin - PR kern/154220 */
		if (FUNC2(ia, r, 0) >= 0x7800 && FUNC2(ia, r, 0) < 0x7900)
			FUNC3(100);

		FUNC0(regWr);
	}
	return regWr;
}