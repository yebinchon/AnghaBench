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
typedef  int /*<<< orphan*/  uint8_t ;
struct superio_devinfo {int /*<<< orphan*/  ldn; } ;
struct siosc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct superio_devinfo* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct siosc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct siosc*) ; 
 int /*<<< orphan*/  FUNC4 (struct siosc*) ; 
 int /*<<< orphan*/  FUNC5 (struct siosc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6(device_t dev, uint8_t reg, uint8_t val)
{
	device_t sio_dev = FUNC1(dev);
	struct siosc *sc = FUNC2(sio_dev);
	struct superio_devinfo *dinfo = FUNC0(dev);

	FUNC3(sc);
	FUNC5(sc, dinfo->ldn, reg, val);
	FUNC4(sc);
}