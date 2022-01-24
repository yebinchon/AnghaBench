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
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

__attribute__((used)) static void
FUNC10(struct hdaa_devinfo *devinfo)
{
	device_t dev = devinfo->dev;
	int i;
	uint32_t data, dir, enable, wake, unsol, sticky;

	if (FUNC6(devinfo->gpio_cap) > 0) {
		data = FUNC8(dev,
		    FUNC0(0, devinfo->nid));
		enable = FUNC8(dev,
		    FUNC2(0, devinfo->nid));
		dir = FUNC8(dev,
		    FUNC1(0, devinfo->nid));
		wake = FUNC8(dev,
		    FUNC5(0, devinfo->nid));
		unsol = FUNC8(dev,
		    FUNC4(0, devinfo->nid));
		sticky = FUNC8(dev,
		    FUNC3(0, devinfo->nid));
		for (i = 0; i < FUNC6(devinfo->gpio_cap); i++) {
			FUNC7(dev, " GPIO%d: ", i);
			if ((enable & (1 << i)) == 0) {
				FUNC9("disabled\n");
				continue;
			}
			if ((dir & (1 << i)) == 0) {
				FUNC9("input%s%s%s",
				    (sticky & (1 << i)) ? " sticky" : "",
				    (unsol & (1 << i)) ? " unsol" : "",
				    (wake & (1 << i)) ? " wake" : "");
			} else
				FUNC9("output");
			FUNC9(" state=%d\n", (data >> i) & 1);
		}
	}
}