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
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  driver_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_CAP_PERF_MSRS ; 

__attribute__((used)) static int
FUNC0(driver_t *driver, u_int *features)
{

	/* Notify the ACPI CPU that we support direct access to MSRs */
	*features = ACPI_CAP_PERF_MSRS;
	return (0);
}