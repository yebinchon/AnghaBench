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
struct cdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  MAKEDEV_ETERNAL ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  fildesc_cdevsw ; 
 int /*<<< orphan*/  FUNC0 (struct cdev*,char*) ; 
 struct cdev* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static void
FUNC2(void *unused)
{
	struct cdev *dev;

	dev = FUNC1(MAKEDEV_ETERNAL, &fildesc_cdevsw, 0, NULL,
	    UID_ROOT, GID_WHEEL, 0666, "fd/0");
	FUNC0(dev, "stdin");
	dev = FUNC1(MAKEDEV_ETERNAL, &fildesc_cdevsw, 1, NULL,
	    UID_ROOT, GID_WHEEL, 0666, "fd/1");
	FUNC0(dev, "stdout");
	dev = FUNC1(MAKEDEV_ETERNAL, &fildesc_cdevsw, 2, NULL,
	    UID_ROOT, GID_WHEEL, 0666, "fd/2");
	FUNC0(dev, "stderr");
}