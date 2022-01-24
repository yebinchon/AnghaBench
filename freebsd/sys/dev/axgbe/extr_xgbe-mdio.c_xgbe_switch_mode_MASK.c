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
struct xgbe_prv_data {scalar_t__ speed_set; } ;

/* Variables and functions */
 scalar_t__ XGBE_SPEEDSET_1000_10000 ; 
 int /*<<< orphan*/  FUNC0 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*) ; 
 scalar_t__ FUNC2 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct xgbe_prv_data*) ; 

__attribute__((used)) static void FUNC4(struct xgbe_prv_data *pdata)
{
	/* If we are in KR switch to KX, and vice-versa */
	if (FUNC2(pdata)) {
		if (pdata->speed_set == XGBE_SPEEDSET_1000_10000)
			FUNC1(pdata);
		else
			FUNC0(pdata);
	} else {
		FUNC3(pdata);
	}
}