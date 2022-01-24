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
struct xgbe_prv_data {int /*<<< orphan*/  an_mutex; int /*<<< orphan*/  dev_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  XGBE_LINK_ERR ; 
 int FUNC0 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct xgbe_prv_data *pdata)
{
	int ret;

	FUNC4(&pdata->an_mutex);

	ret = FUNC0(pdata);
	if (ret)
		FUNC2(XGBE_LINK_ERR, &pdata->dev_state);
	else
		FUNC1(XGBE_LINK_ERR, &pdata->dev_state);

	FUNC3(&pdata->an_mutex);

	return ret;
}