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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct acpi_hpcib_softc {int ap_addr; int /*<<< orphan*/  ap_segment; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 struct acpi_hpcib_softc* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t pcib, device_t dev, int irq, uint64_t *addr,
    uint32_t *data)
{
	struct acpi_hpcib_softc *sc;
	device_t bus, hostb;
	int error;

	bus = FUNC3(pcib);
	error = FUNC2(FUNC3(bus), dev, irq, addr, data);
	if (error)
		return (error);

	sc = FUNC4(pcib);
	if (sc->ap_addr == -1)
		return (0);
	/* XXX: Assumes all bridges are on bus 0. */
	hostb = FUNC5(sc->ap_segment, 0, FUNC1(sc->ap_addr),
	    FUNC0(sc->ap_addr));
	if (hostb != NULL)
		FUNC6(hostb, *addr);
	return (0);
}