#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct hub_result {int portno; } ;
struct TYPE_5__ {TYPE_3__* sc_udev; } ;
struct acpi_uhub_softc {int nports; TYPE_1__* port; TYPE_2__ usc; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_6__ {int /*<<< orphan*/  hub; } ;
struct TYPE_4__ {scalar_t__ handle; } ;
typedef  scalar_t__ ACPI_HANDLE ;

/* Variables and functions */
 int ACPI_IVAR_HANDLE ; 
 int ENXIO ; 
 int /*<<< orphan*/  Giant ; 
 struct acpi_uhub_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hub_result*) ; 

__attribute__((used)) static int
FUNC4(device_t dev, device_t child, int idx, uintptr_t *res)
{
	struct hub_result hres;
	struct acpi_uhub_softc *sc = FUNC0(dev);
	ACPI_HANDLE ah;

	FUNC1(&Giant);
	FUNC3(sc->usc.sc_udev->hub, child, &hres);
	FUNC2(&Giant);

	if ((idx == ACPI_IVAR_HANDLE) &&
	    (hres.portno > 0) &&
	    (hres.portno <= sc->nports) &&
	    (ah = sc->port[hres.portno - 1].handle)) {
		*res = (uintptr_t)ah;
		return (0);
	}
	return (ENXIO);
}