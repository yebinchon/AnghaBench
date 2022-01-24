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
struct drm_device {int irq; scalar_t__ irqr; int /*<<< orphan*/  dev; int /*<<< orphan*/  irqrid; } ;

/* Variables and functions */
 int /*<<< orphan*/  RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct drm_device *dev)
{
	if (dev->irqr)
		return (dev->irq);

	dev->irqr = FUNC0(dev->dev, SYS_RES_IRQ,
	    &dev->irqrid, RF_SHAREABLE);
	if (!dev->irqr) {
		FUNC1(dev->dev, "Failed to allocate IRQ\n");
		return (0);
	}

	dev->irq = (int) FUNC2(dev->irqr);

	return (dev->irq);
}