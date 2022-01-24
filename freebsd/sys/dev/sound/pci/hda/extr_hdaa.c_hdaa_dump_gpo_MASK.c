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
typedef  int uint32_t ;
struct hdaa_devinfo {int /*<<< orphan*/  gpio_cap; int /*<<< orphan*/  nid; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct hdaa_devinfo *devinfo)
{
	device_t dev = devinfo->dev;
	int i;
	uint32_t data;

	if (FUNC1(devinfo->gpio_cap) > 0) {
		data = FUNC3(dev,
		    FUNC0(0, devinfo->nid));
		for (i = 0; i < FUNC1(devinfo->gpio_cap); i++) {
			FUNC2(dev, " GPO%d: state=%d", i,
				    (data >> i) & 1);
		}
	}
}