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
struct uio {int uio_resid; } ;
struct pcfclock_data {int /*<<< orphan*/  dev; } ;
struct cdev {struct pcfclock_data* si_drv1; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ERANGE ; 
 int /*<<< orphan*/  PCFCLOCK_MAX_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct cdev*,char*) ; 
 int FUNC3 (struct cdev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,struct uio*) ; 

__attribute__((used)) static int
FUNC7(struct cdev *dev, struct uio *uio, int ioflag)
{
	struct pcfclock_data *sc = dev->si_drv1;
	device_t ppbus;
	char buf[18];
	int error = 0;

	if (uio->uio_resid < 18)
		return (ERANGE);

	ppbus = FUNC0(sc->dev);
	FUNC4(ppbus);
	error = FUNC3(dev, buf, PCFCLOCK_MAX_RETRIES);
	FUNC5(ppbus);

	if (error) {
		FUNC1(sc->dev, "no PCF found\n");
	} else {
		FUNC2(dev, buf);

		FUNC6(buf, 18, uio);
	}

	return (error);
}