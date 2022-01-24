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
typedef  int uint8_t ;
struct superio_devinfo {int ldn; } ;
struct siosc {scalar_t__ vendor; int /*<<< orphan*/  enable_reg; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ SUPERIO_VENDOR_ITE ; 
 struct superio_devinfo* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct siosc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC4(device_t dev, uint8_t mask)
{
	device_t sio_dev = FUNC1(dev);
	struct siosc *sc = FUNC2(sio_dev);
	struct superio_devinfo *dinfo = FUNC0(dev);
	uint8_t v;

	/* GPIO device is always active in ITE chips. */
	if (sc->vendor == SUPERIO_VENDOR_ITE && dinfo->ldn == 7)
		return (true);

	v = FUNC3(dev, sc->enable_reg);
	return ((v & mask) != 0);
}