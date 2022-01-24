#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct cf_setting {int freq; } ;
struct acpi_throttle_softc {int /*<<< orphan*/  cpu_p_blk_len; int /*<<< orphan*/  cpu_p_blk; int /*<<< orphan*/  cpu_handle; int /*<<< orphan*/  cpu_dev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_8__ {int /*<<< orphan*/ * Pointer; int /*<<< orphan*/  Length; } ;
struct TYPE_6__ {int /*<<< orphan*/  PblkLength; int /*<<< orphan*/  PblkAddress; } ;
struct TYPE_7__ {TYPE_1__ Processor; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_2__ ACPI_OBJECT ;
typedef  TYPE_3__ ACPI_BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct cf_setting*) ; 
 int FUNC6 (struct acpi_throttle_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct acpi_throttle_softc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct acpi_throttle_softc* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct acpi_throttle_softc *sc;
	struct cf_setting set;
	ACPI_BUFFER buf;
	ACPI_OBJECT *obj;
	ACPI_STATUS status;
	int error;

	sc = FUNC9(dev);
	sc->cpu_dev = dev;
	sc->cpu_handle = FUNC4(dev);

	buf.Pointer = NULL;
	buf.Length = ACPI_ALLOCATE_BUFFER;
	status = FUNC1(sc->cpu_handle, NULL, NULL, &buf);
	if (FUNC0(status)) {
		FUNC11(dev, "attach failed to get Processor obj - %s\n",
		    FUNC2(status));
		return (ENXIO);
	}
	obj = (ACPI_OBJECT *)buf.Pointer;
	sc->cpu_p_blk = obj->Processor.PblkAddress;
	sc->cpu_p_blk_len = obj->Processor.PblkLength;
	FUNC3(obj);

	/* If this is the first device probed, check for quirks. */
	if (FUNC10(dev) == 0)
		FUNC7(sc);

	/* Attempt to attach the actual throttling register. */
	error = FUNC6(sc);
	if (error)
		return (error);

	/*
	 * Set our initial frequency to the highest since some systems
	 * seem to boot with this at the lowest setting.
	 */
	set.freq = 10000;
	FUNC5(dev, &set);

	/* Everything went ok, register with cpufreq(4). */
	FUNC8(dev);
	return (0);
}