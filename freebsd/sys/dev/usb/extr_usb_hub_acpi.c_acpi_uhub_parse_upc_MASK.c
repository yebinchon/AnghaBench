#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
struct sysctl_oid_list {int dummy; } ;
struct acpi_uhub_softc {struct acpi_uhub_port* port; } ;
struct acpi_uhub_port {scalar_t__ upc; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ UINT64 ;
struct TYPE_3__ {int /*<<< orphan*/ * Pointer; int /*<<< orphan*/  Length; } ;
typedef  int /*<<< orphan*/  ACPI_OBJECT ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;
typedef  TYPE_1__ ACPI_BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ ACPI_UPC_CONNECTABLE ; 
 scalar_t__ AE_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int CTLFLAG_MPSAFE ; 
 int CTLFLAG_RD ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  SYSCTL_NULL_U32_PTR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 struct acpi_uhub_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,unsigned int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ usb_debug ; 

__attribute__((used)) static int
FUNC8(device_t dev, unsigned int p, ACPI_HANDLE ah, struct sysctl_oid_list *poid)
{
	ACPI_BUFFER buf;
	struct acpi_uhub_softc *sc = FUNC5(dev);
	struct acpi_uhub_port *port = &sc->port[p - 1];

	buf.Pointer = NULL;
	buf.Length = ACPI_ALLOCATE_BUFFER;

	if (FUNC0(ah, "_UPC", NULL, &buf) == AE_OK) {
		ACPI_OBJECT *obj = buf.Pointer;
		UINT64 porttypenum, conn;
		uint8_t *connectable;

		FUNC3(obj, 0, &conn);
		FUNC3(obj, 1, &porttypenum);
		connectable = conn ? "" : "non";

		port->upc = porttypenum;
		port->upc |= (conn) ? (ACPI_UPC_CONNECTABLE) : 0;

		if (usb_debug)
			FUNC7(dev, "Port %u %sconnectable %s\n",
			    p, connectable,
			    FUNC4(porttypenum));

		FUNC2(
		    FUNC6(dev),
		    poid, OID_AUTO,
		    "upc",
		    CTLFLAG_RD | CTLFLAG_MPSAFE,
		    SYSCTL_NULL_U32_PTR, port->upc,
		    "UPC value. MSB is visible flag");
	}
	FUNC1(buf.Pointer);

	return (0);
}