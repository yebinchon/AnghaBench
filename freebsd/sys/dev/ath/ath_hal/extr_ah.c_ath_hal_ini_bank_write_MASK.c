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
typedef  int /*<<< orphan*/  uint32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_4__ {int rows; } ;
typedef  TYPE_1__ HAL_INI_ARRAY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 

int
FUNC3(struct ath_hal *ah, const HAL_INI_ARRAY *ia,
	const uint32_t data[], int regWr)
{
	int r;

	for (r = 0; r < ia->rows; r++) {
		FUNC2(ah, FUNC1(ia, r, 0), data[r]);
		FUNC0(regWr);
	}
	return regWr;
}