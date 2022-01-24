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
struct xgbe_prv_data {int /*<<< orphan*/  service_timer; int /*<<< orphan*/  service_work; int /*<<< orphan*/  dev_workqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *data)
{
	struct xgbe_prv_data *pdata = data;

	FUNC0("--> xgbe_service_timer\n");
	FUNC2(pdata->dev_workqueue, &pdata->service_work);

	FUNC1(&pdata->service_timer, hz, xgbe_service_timer, pdata);
	FUNC0("<-- xgbe_service_timer\n");
}