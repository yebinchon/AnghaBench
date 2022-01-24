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
struct iicbus_softc {scalar_t__ owner; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(device_t bus, int event, char *buf)
{
	struct iicbus_softc *sc = (struct iicbus_softc *)FUNC1(bus);

	/* call owner's intr routine */
	if (sc->owner)
		FUNC0(sc->owner, event, buf);

	return;
}