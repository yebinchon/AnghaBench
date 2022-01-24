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
struct drm_device {int /*<<< orphan*/  pcir_lock; int /*<<< orphan*/ * pcir; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 

unsigned long FUNC4(struct drm_device *dev,
				   unsigned int resource)
{
	unsigned long len;

	FUNC1(&dev->pcir_lock);

	if (FUNC0(dev, resource) != 0)
		return 0;

	len = FUNC3(dev->pcir[resource]);

	FUNC2(&dev->pcir_lock);

	return (len);
}