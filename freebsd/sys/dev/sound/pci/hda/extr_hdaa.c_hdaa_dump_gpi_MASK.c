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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,char*,char*,char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct hdaa_devinfo *devinfo)
{
	device_t dev = devinfo->dev;
	int i;
	uint32_t data, wake, unsol, sticky;

	if (FUNC4(devinfo->gpio_cap) > 0) {
		data = FUNC6(dev,
		    FUNC0(0, devinfo->nid));
		wake = FUNC6(dev,
		    FUNC3(0, devinfo->nid));
		unsol = FUNC6(dev,
		    FUNC2(0, devinfo->nid));
		sticky = FUNC6(dev,
		    FUNC1(0, devinfo->nid));
		for (i = 0; i < FUNC4(devinfo->gpio_cap); i++) {
			FUNC5(dev, " GPI%d:%s%s%s state=%d", i,
				    (sticky & (1 << i)) ? " sticky" : "",
				    (unsol & (1 << i)) ? " unsol" : "",
				    (wake & (1 << i)) ? " wake" : "",
				    (data >> i) & 1);
		}
	}
}