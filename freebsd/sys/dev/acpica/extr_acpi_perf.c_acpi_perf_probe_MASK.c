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
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {int /*<<< orphan*/ * Pointer; int /*<<< orphan*/  Length; } ;
typedef  int /*<<< orphan*/  ACPI_OBJECT ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;
typedef  TYPE_1__ ACPI_BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int ENXIO ; 
#define  EOPNOTSUPP 128 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int*,struct resource**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC10 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	ACPI_HANDLE handle;
	ACPI_OBJECT *pkg;
	struct resource *res;
	ACPI_BUFFER buf;
	int error, rid, type;

	if (FUNC10("acpi_perf", 0))
		return (ENXIO);

	/*
	 * Check the performance state registers.  If they are of type
	 * "functional fixed hardware", we attach quietly since we will
	 * only be providing information on settings to other drivers.
	 */
	error = ENXIO;
	handle = FUNC5(dev);
	buf.Pointer = NULL;
	buf.Length = ACPI_ALLOCATE_BUFFER;
	if (FUNC0(FUNC2(handle, "_PCT", NULL, &buf)))
		return (error);
	pkg = (ACPI_OBJECT *)buf.Pointer;
	if (FUNC1(pkg, 2)) {
		rid = 0;
		error = FUNC4(dev, pkg, 0, &type, &rid, &res, 0);
		switch (error) {
		case 0:
			FUNC7(dev, type, rid, res);
			FUNC6(dev, type, rid);
			FUNC9(dev, "ACPI CPU Frequency Control");
			break;
		case EOPNOTSUPP:
			FUNC8(dev);
			error = 0;
			break;
		}
	}
	FUNC3(buf.Pointer);

	return (error);
}