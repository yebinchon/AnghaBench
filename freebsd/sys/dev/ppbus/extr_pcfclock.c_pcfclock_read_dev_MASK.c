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
struct pcfclock_data {int /*<<< orphan*/  dev; } ;
struct cdev {struct pcfclock_data* si_drv1; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  PCFCLOCK_CMD_TIME ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  PPB_COMPATIBLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct cdev*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct cdev *dev, char *buf, int maxretries)
{
	struct pcfclock_data *sc = dev->si_drv1;
	device_t pcfclockdev = sc->dev;
	device_t ppbus = FUNC2(pcfclockdev);
	int error = 0;

	FUNC5(ppbus, PPB_COMPATIBLE);

	while (--maxretries > 0) {
		FUNC4(dev, PCFCLOCK_CMD_TIME);
		if (FUNC3(dev, buf, 68))
			continue;

		if (!FUNC1(buf))
			continue;

		if (!FUNC0(buf))
			continue;

		break;
	}

	if (!maxretries)
		error = EIO;

	return (error);
}