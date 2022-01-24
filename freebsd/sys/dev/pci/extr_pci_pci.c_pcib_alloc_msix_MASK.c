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
struct pcib_softc {int flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int PCIB_DISABLE_MSIX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct pcib_softc* FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(device_t pcib, device_t dev, int *irq)
{
	struct pcib_softc *sc = FUNC2(pcib);
	device_t bus;

	if (sc->flags & PCIB_DISABLE_MSIX)
		return (ENXIO);
	bus = FUNC1(pcib);
	return (FUNC0(FUNC1(bus), dev, irq));
}