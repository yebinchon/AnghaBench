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
struct drm_device {int msi_enabled; int irqrid; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int ENOENT ; 
 int /*<<< orphan*/  drm_msi ; 
 int FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(struct drm_device *dev)
{
	int msicount, ret;

	if (!drm_msi)
		return (-ENOENT);

	msicount = FUNC3(dev->dev);
	FUNC0("MSI count = %d\n", msicount);
	if (msicount > 1)
		msicount = 1;

	ret = FUNC2(dev->dev, &msicount);
	if (ret == 0) {
		FUNC1("MSI enabled %d message(s)\n", msicount);
		dev->msi_enabled = 1;
		dev->irqrid = 1;
	}

	return (-ret);
}