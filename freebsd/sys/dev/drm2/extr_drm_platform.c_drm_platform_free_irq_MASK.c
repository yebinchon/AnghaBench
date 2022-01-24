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
struct drm_device {scalar_t__ irq; int /*<<< orphan*/ * irqr; int /*<<< orphan*/  irqrid; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct drm_device *dev)
{
	if (dev->irqr == NULL)
		return;

	FUNC0(dev->dev, SYS_RES_IRQ,
	    dev->irqrid, dev->irqr);

	dev->irqr = NULL;
	dev->irq = 0;
}