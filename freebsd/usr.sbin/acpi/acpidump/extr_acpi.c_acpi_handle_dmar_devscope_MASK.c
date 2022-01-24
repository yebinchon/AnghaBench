#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int Length; int EnumerationId; int Bus; int /*<<< orphan*/  EntryType; } ;
struct TYPE_3__ {int Device; int /*<<< orphan*/  Function; } ;
typedef  TYPE_1__ ACPI_DMAR_PCI_PATH ;
typedef  TYPE_2__ ACPI_DMAR_DEVICE_SCOPE ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static int
FUNC2(void *addr, int remaining)
{
	char sep;
	int pathlen;
	ACPI_DMAR_PCI_PATH *path, *pathend;
	ACPI_DMAR_DEVICE_SCOPE *devscope = addr;

	if (remaining < (int)sizeof(ACPI_DMAR_DEVICE_SCOPE))
		return (-1);

	if (remaining < devscope->Length)
		return (-1);

	FUNC1("\n");
	FUNC1("\t\tType=%s\n", FUNC0(devscope->EntryType));
	FUNC1("\t\tLength=%d\n", devscope->Length);
	FUNC1("\t\tEnumerationId=%d\n", devscope->EnumerationId);
	FUNC1("\t\tStartBusNumber=%d\n", devscope->Bus);

	path = (ACPI_DMAR_PCI_PATH *)(devscope + 1);
	pathlen = devscope->Length - sizeof(ACPI_DMAR_DEVICE_SCOPE);
	pathend = path + pathlen / sizeof(ACPI_DMAR_PCI_PATH);
	if (path < pathend) {
		sep = '{';
		FUNC1("\t\tPath=");
		do {
			FUNC1("%c%d:%d", sep, path->Device, path->Function);
			sep=',';
			path++;
		} while (path < pathend);
		FUNC1("}\n");
	}

	return (devscope->Length);
}