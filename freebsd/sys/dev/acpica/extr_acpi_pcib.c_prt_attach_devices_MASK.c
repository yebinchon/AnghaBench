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
typedef  int /*<<< orphan*/ * device_t ;
struct TYPE_3__ {char* Source; int /*<<< orphan*/  Pin; int /*<<< orphan*/  Address; int /*<<< orphan*/  SourceIndex; } ;
typedef  TYPE_1__ ACPI_PCI_ROUTING_TABLE ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_ROOT_OBJECT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(ACPI_PCI_ROUTING_TABLE *entry, void *arg)
{
    ACPI_HANDLE handle;
    device_t child, pcib;
    int error;

    /* We only care about entries that reference a link device. */
    if (entry->Source[0] == '\0')
	return;

    /*
     * In practice, we only see SourceIndex's of 0 out in the wild.
     * When indices != 0 have been found, they've been bugs in the ASL.
     */
    if (entry->SourceIndex != 0)
	return;

    /* Lookup the associated handle and device. */
    pcib = (device_t)arg;
    if (FUNC1(FUNC2(ACPI_ROOT_OBJECT, entry->Source, &handle)))
	return;
    child = FUNC3(handle);
    if (child == NULL)
	return;

    /* If the device hasn't been probed yet, force it to do so. */
    error = FUNC7(child);
    if (error != 0) {
	FUNC6(pcib, "failed to force attach of %s\n",
	    FUNC4(handle));
	return;
    }

    /* Add a reference for a specific bus/device/pin tuple. */
    FUNC5(child, entry->SourceIndex, pcib,
	FUNC0(entry->Address), entry->Pin);
}