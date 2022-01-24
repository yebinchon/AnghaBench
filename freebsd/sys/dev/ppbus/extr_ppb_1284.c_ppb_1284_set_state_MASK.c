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
struct ppb_data {int state; scalar_t__ error; int /*<<< orphan*/  ppc_lock; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct ppb_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int PPB_ERROR ; 
 scalar_t__ PPB_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC2(device_t bus, int state)
{
	struct ppb_data *ppb = FUNC0(bus);

	/* call ppb_1284_reset_error() if you absolutely want to change
	 * the state from PPB_ERROR to another */
	FUNC1(ppb->ppc_lock, MA_OWNED);
	if ((ppb->state != PPB_ERROR) &&
			(ppb->error == PPB_NO_ERROR)) {
		ppb->state = state;
		ppb->error = PPB_NO_ERROR;
	}

	return (0);
}