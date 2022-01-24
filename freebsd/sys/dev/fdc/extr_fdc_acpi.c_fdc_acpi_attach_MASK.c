#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct fdc_data {int /*<<< orphan*/  fdc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_9__ {TYPE_2__* Pointer; int /*<<< orphan*/  Length; } ;
struct TYPE_7__ {int /*<<< orphan*/  Pointer; } ;
struct TYPE_8__ {TYPE_1__ Buffer; } ;
typedef  TYPE_2__ ACPI_OBJECT ;
typedef  TYPE_3__ ACPI_BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_FDC_BUFLEN ; 
 int ENXIO ; 
 int M_NOWAIT ; 
 int /*<<< orphan*/  M_TEMP ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct fdc_data* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct fdc_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct fdc_data*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct fdc_data *sc;
	ACPI_BUFFER buf;
	ACPI_OBJECT *obj;
	device_t bus;
	int error;

	/* Get our softc and use the same accessor as ISA. */
	sc = FUNC3(dev);
	sc->fdc_dev = dev;

	/* Initialize variables and get a temporary buffer for _FDE. */
	error = ENXIO;
	buf.Length = ACPI_FDC_BUFLEN;
	buf.Pointer = FUNC11(buf.Length, M_TEMP, M_NOWAIT | M_ZERO);
	if (buf.Pointer == NULL)
		goto out;

	/* Allocate resources the same as the ISA attachment. */
	error = FUNC7(dev, sc);
	if (error != 0)
		goto out;

	/* Call common attach code in fdc(4) first. */
	error = FUNC5(dev);
	if (error != 0)
		goto out;

	/*
	 * Enumerate _FDE, which lists floppy drives that are present.  If
	 * this fails, fall back to the ISA hints-based probe method.
	 */
	bus = FUNC2(dev);
	if (FUNC1(FUNC0(bus, dev, "_FDE", NULL, &buf))) {
		error = FUNC6(dev);
		goto out;
	}

	/* Add fd child devices as specified. */
	obj = buf.Pointer;
	error = FUNC4(bus, dev, obj->Buffer.Pointer);

out:
	if (buf.Pointer)
		FUNC10(buf.Pointer, M_TEMP);
	if (error != 0)
		FUNC8(sc);
	else
		FUNC9(dev);

	return (error);
}