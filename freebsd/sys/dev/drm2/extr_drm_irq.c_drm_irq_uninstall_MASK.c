#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_device {int irq_enabled; int num_crtcs; TYPE_2__* driver; int /*<<< orphan*/  irqh; int /*<<< orphan*/  irqr; int /*<<< orphan*/  dev; int /*<<< orphan*/  vbl_lock; int /*<<< orphan*/ * last_vblank; scalar_t__* vblank_enabled; int /*<<< orphan*/ * _vblank_count; } ;
struct TYPE_4__ {TYPE_1__* bus; int /*<<< orphan*/  (* irq_uninstall ) (struct drm_device*) ;int /*<<< orphan*/  (* get_vblank_counter ) (struct drm_device*,int) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  (* free_irq ) (struct drm_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_HAVE_IRQ ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_device*) ; 

int FUNC12(struct drm_device *dev)
{
	int irq_enabled, i;

	if (!FUNC5(dev, DRIVER_HAVE_IRQ))
		return -EINVAL;

	FUNC1(dev);
	irq_enabled = dev->irq_enabled;
	dev->irq_enabled = 0;
	FUNC2(dev);

	/*
	 * Wake up any waiters so they don't hang.
	 */
	if (dev->num_crtcs) {
		FUNC7(&dev->vbl_lock);
		for (i = 0; i < dev->num_crtcs; i++) {
			FUNC3(&dev->_vblank_count[i]);
			dev->vblank_enabled[i] = 0;
			dev->last_vblank[i] =
				dev->driver->get_vblank_counter(dev, i);
		}
		FUNC8(&dev->vbl_lock);
	}

	if (!irq_enabled)
		return -EINVAL;

	FUNC0("irq=%d\n", FUNC6(dev));

	if (dev->driver->irq_uninstall)
		dev->driver->irq_uninstall(dev);

	FUNC4(dev->dev, dev->irqr, dev->irqh);
	dev->driver->bus->free_irq(dev);

	return 0;
}