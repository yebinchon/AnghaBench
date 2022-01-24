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
struct ppc_data {scalar_t__ ppc_intr_arg; int /*<<< orphan*/ * ppc_intr_hook; int /*<<< orphan*/  ppbus; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct ppc_data*) ; 
#define  PPC_IVAR_INTR_HANDLER 128 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2(device_t bus, device_t dev, int index, uintptr_t val)
{
	struct ppc_data *ppc = (struct ppc_data *)FUNC1(bus);

	switch (index) {
	case PPC_IVAR_INTR_HANDLER:
		FUNC0(ppc);
		if (dev != ppc->ppbus)
			return (EINVAL);
		if (val == 0) {
			ppc->ppc_intr_hook = NULL;
			break;
		}
		if (ppc->ppc_intr_hook != NULL)
			return (EBUSY);
		ppc->ppc_intr_hook = (void *)val;
		ppc->ppc_intr_arg = FUNC1(dev);
		break;
	default:
		return (ENOENT);
	}

	return (0);
}