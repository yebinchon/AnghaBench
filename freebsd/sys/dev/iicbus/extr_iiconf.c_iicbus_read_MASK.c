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
 int FUNC0 (int /*<<< orphan*/ ,char*,int,int*,int,int) ; 
 int IIC_ESTATUS ; 
 int LSB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

int 
FUNC3(device_t bus, char *buf, int len, int *read, int last, int delay)
{
	struct iicbus_softc *sc = (struct iicbus_softc *)FUNC2(bus);
	
	/* a slave must have been started for reading */
	if (sc->started == 0 || (sc->strict != 0 && (sc->started & LSB) == 0))
		return (IIC_ESTATUS);

	return (FUNC0(FUNC1(bus), buf, len, read, last, delay));
}