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
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/ * ACPI_HANDLE ;

/* Variables and functions */
 int EOVERFLOW ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,size_t,char*,...) ; 

__attribute__((used)) static int
FUNC3(device_t dev, device_t child, char *buf,
    size_t buflen)
{
	ACPI_HANDLE handle;
	int res;

	handle = FUNC1(child);
	if (handle != NULL)
		res = FUNC2(buf, buflen, "handle=%s", FUNC0(handle));
	else
		res = FUNC2(buf, buflen, "");

	if (res >= buflen)
		return (EOVERFLOW);
	return (0);
}