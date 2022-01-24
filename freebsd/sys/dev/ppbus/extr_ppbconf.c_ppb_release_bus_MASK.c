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
struct TYPE_2__ {int valid; int /*<<< orphan*/  mode; } ;
struct ppb_device {TYPE_1__ ctx; } ;
struct ppb_data {scalar_t__ ppb_owner; int /*<<< orphan*/  ppc_lock; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 struct ppb_data* FUNC0 (scalar_t__) ; 
 int EACCES ; 
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ppb_data*) ; 

int
FUNC5(device_t bus, device_t dev)
{
	struct ppb_data *ppb = FUNC0(bus);
	struct ppb_device *ppbdev = (struct ppb_device *)FUNC1(dev);

	FUNC2(ppb->ppc_lock, MA_OWNED);
	if (ppb->ppb_owner != dev)
		return (EACCES);

	/* save the context of the device */
	ppbdev->ctx.mode = FUNC3(bus);

	/* ok, now the context of the device is valid */
	ppbdev->ctx.valid = 1;

	ppb->ppb_owner = 0;

	/* wakeup waiting processes */
	FUNC4(ppb);

	return (0);
}