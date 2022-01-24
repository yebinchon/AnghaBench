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
typedef  int /*<<< orphan*/  vm_offset_t ;

/* Variables and functions */
 int ACPI_Q_BROKEN ; 
 char* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int*) ; 

int
FUNC3(int *quirks)
{
	char *va;
	int year;

	/* BIOS address 0xffff5 contains the date in the format mm/dd/yy. */
	va = FUNC0(0xffff0, 16);
	FUNC2(va + 11, "%2d", &year);
	FUNC1((vm_offset_t)va, 16);

	/* 
	 * Date must be >= 1/1/1999 or we don't trust ACPI.  Note that this
	 * check must be changed by my 114th birthday.
	 */
	if (year > 90 && year < 99)
		*quirks = ACPI_Q_BROKEN;

	return (0);
}