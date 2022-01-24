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
struct xgbe_prv_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DMA_MR ; 
 int EBUSY ; 
 int /*<<< orphan*/  SWR ; 
 scalar_t__ FUNC2 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct xgbe_prv_data *pdata)
{
	unsigned int count = 2000;

	FUNC0("-->xgbe_exit\n");

	/* Issue a software reset */
	FUNC3(pdata, DMA_MR, SWR, 1);
	FUNC1(10);

	/* Poll Until Poll Condition */
	while (--count && FUNC2(pdata, DMA_MR, SWR))
		FUNC1(500);

	if (!count)
		return -EBUSY;

	FUNC0("<--xgbe_exit\n");

	return 0;
}