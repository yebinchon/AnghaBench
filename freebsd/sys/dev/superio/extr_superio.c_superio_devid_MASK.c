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
typedef  int /*<<< orphan*/  uint16_t ;
struct siosc {int /*<<< orphan*/  devid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct siosc* FUNC1 (int /*<<< orphan*/ ) ; 

uint16_t
FUNC2(device_t dev)
{
	device_t sio_dev = FUNC0(dev);
	struct siosc *sc = FUNC1(sio_dev);

	return (sc->devid);
}