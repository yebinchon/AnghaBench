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
typedef  scalar_t__ UINT32 ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*) ; 
 int /*<<< orphan*/  video_output ; 

__attribute__((used)) static UINT32
FUNC6(ACPI_HANDLE handle)
{
	UINT32 dcs;
	ACPI_STATUS status;

	FUNC1(video_output);
	dcs = 0;
	status = FUNC3(handle, "_DCS", &dcs);
	if (FUNC0(status))
		FUNC5("can't evaluate %s._DCS - %s\n",
		       FUNC4(handle), FUNC2(status));

	return (dcs);
}