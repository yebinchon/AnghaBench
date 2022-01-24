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
struct ath_hal {int dummy; } ;
struct TYPE_2__ {scalar_t__ ah_ispcie; } ;

/* Variables and functions */
 int /*<<< orphan*/  AH_FALSE ; 
 TYPE_1__* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*) ; 

void
FUNC3(struct ath_hal *ah)
{
	if (FUNC0(ah)->ah_ispcie)
		FUNC1(ah, AH_FALSE, AH_FALSE);
	else
		FUNC2(ah);
}