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
struct efi_tm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int ENXIO ; 
 int /*<<< orphan*/ * efi_runtime ; 
 int FUNC2 (struct efi_tm*) ; 

int
FUNC3(struct efi_tm *tm)
{
	int error;

	if (efi_runtime == NULL)
		return (ENXIO);
	FUNC0();
	error = FUNC2(tm);
	FUNC1();
	return (error);
}