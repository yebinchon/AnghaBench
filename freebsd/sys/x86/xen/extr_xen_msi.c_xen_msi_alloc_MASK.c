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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  first_msi_irq ; 
 scalar_t__ msi_last_irq ; 
 int /*<<< orphan*/  msi_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ num_msi_irqs ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 

int
FUNC4(device_t dev, int count, int maxcount, int *irqs)
{
	int i, ret = 0;

	FUNC0(&msi_lock);

	/* If we would exceed the max, give up. */
	if (msi_last_irq + count > num_msi_irqs) {
		FUNC1(&msi_lock);
		return (ENXIO);
	}

	/* Allocate MSI vectors */
	for (i = 0; i < count; i++)
		irqs[i] = first_msi_irq + msi_last_irq++;

	FUNC1(&msi_lock);

	ret = FUNC3(dev, irqs[0], count);
	if (ret != 0)
		return (ret);

	for (i = 0; i < count; i++)
		FUNC2(irqs[i]);

	return (0);
}