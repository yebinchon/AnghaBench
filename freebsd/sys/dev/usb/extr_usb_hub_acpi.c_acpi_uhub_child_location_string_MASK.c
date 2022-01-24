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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 

__attribute__((used)) static int
FUNC4(device_t parent, device_t child,
    char *buf, size_t buflen)
{
	ACPI_HANDLE ah;

	FUNC3(parent, child, buf, buflen);

	ah = FUNC0(child);
	if (ah != NULL) {
		FUNC2(buf, " handle=", buflen);
		FUNC2(buf, FUNC1(ah), buflen);
	}
	return (0);
}