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
struct resource {int dummy; } ;
struct ppb_device {void (* intr_hook ) (void*) ;void* intr_arg; } ;
struct ppb_data {int /*<<< orphan*/  ppc_lock; struct resource* ppc_irq_res; } ;
typedef  int /*<<< orphan*/  driver_filter_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct ppb_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 struct ppb_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t bus, device_t child, struct resource *r, int flags,
    driver_filter_t *filt, void (*ihand)(void *), void *arg, void **cookiep)
{
	struct ppb_device *ppbdev = FUNC1(child);
	struct ppb_data *ppb = FUNC0(bus);

	/* We do not support filters. */
	if (filt != NULL || ihand == NULL)
		return (EINVAL);

	/* Can only attach handlers to the parent device's resource. */
	if (ppb->ppc_irq_res != r)
		return (EINVAL);

	FUNC2(ppb->ppc_lock);
	ppbdev->intr_hook = ihand;
	ppbdev->intr_arg = arg;
	*cookiep = ppbdev;
	FUNC3(ppb->ppc_lock);

	return (0);
}