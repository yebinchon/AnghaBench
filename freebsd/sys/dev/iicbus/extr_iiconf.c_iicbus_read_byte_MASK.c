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
struct iicbus_softc {int started; scalar_t__ strict; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int IIC_ESTATUS ; 
 int /*<<< orphan*/  IIC_LAST_READ ; 
 int LSB ; 
 struct iicbus_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int,int*,int /*<<< orphan*/ ,int) ; 

int
FUNC2(device_t bus, char *byte, int timeout)
{
	struct iicbus_softc *sc = FUNC0(bus);
	int read;

	/* a slave must have been started for reading */
	if (sc->started == 0 || (sc->strict != 0 && (sc->started & LSB) == 0))
		return (IIC_ESTATUS);

	return (FUNC1(bus, byte, 1, &read, IIC_LAST_READ, timeout));
}