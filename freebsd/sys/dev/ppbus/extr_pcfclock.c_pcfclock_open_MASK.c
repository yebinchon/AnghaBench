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
struct thread {int dummy; } ;
struct pcfclock_data {int /*<<< orphan*/  dev; } ;
struct cdev {struct pcfclock_data* si_drv1; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  PPB_DONTWAIT ; 
 int /*<<< orphan*/  PPB_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct cdev *dev, int flag, int fms, struct thread *td)
{
	struct pcfclock_data *sc = dev->si_drv1;
	device_t pcfclockdev;
	device_t ppbus;
	int res;

	if (!sc)
		return (ENXIO);
	pcfclockdev = sc->dev;
	ppbus = FUNC0(pcfclockdev);

	FUNC1(ppbus);
	res = FUNC2(ppbus, pcfclockdev,
	    (flag & O_NONBLOCK) ? PPB_DONTWAIT : PPB_WAIT);
	FUNC3(ppbus);
	return (res);
}