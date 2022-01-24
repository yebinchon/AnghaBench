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
struct acpi_battinfo {int min; void* cap; } ;
typedef  TYPE_1__* apm_info_t ;
struct TYPE_3__ {int ai_infoversion; int ai_major; int ai_minor; int ai_capabilities; int ai_acline; int ai_batt_time; unsigned int ai_batteries; void* ai_batt_life; void* ai_batt_stat; int /*<<< orphan*/  ai_status; } ;

/* Variables and functions */
 void* APM_UNKNOWN ; 
 scalar_t__ FUNC0 (int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct acpi_battinfo*) ; 
 unsigned int FUNC2 () ; 
 void* FUNC3 (struct acpi_battinfo*) ; 
 int /*<<< orphan*/  apm_active ; 

__attribute__((used)) static int
FUNC4(apm_info_t aip)
{
	int	acline;
	struct	acpi_battinfo batt;

	aip->ai_infoversion = 1;
	aip->ai_major       = 1;
	aip->ai_minor       = 2;
	aip->ai_status      = apm_active;
	aip->ai_capabilities= 0xff00;	/* unknown */

	if (FUNC0(&acline))
		aip->ai_acline = APM_UNKNOWN;	/* unknown */
	else
		aip->ai_acline = acline;	/* on/off */

	if (FUNC1(NULL, &batt) != 0) {
		aip->ai_batt_stat = APM_UNKNOWN;
		aip->ai_batt_life = APM_UNKNOWN;
		aip->ai_batt_time = -1;		 /* unknown */
		aip->ai_batteries = ~0U;	 /* unknown */
	} else {
		aip->ai_batt_stat = FUNC3(&batt);
		aip->ai_batt_life = batt.cap;
		aip->ai_batt_time = (batt.min == -1) ? -1 : batt.min * 60;
		aip->ai_batteries = FUNC2();
	}

	return (0);
}