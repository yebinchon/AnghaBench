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
struct efi_tmcap {int dummy; } ;
struct efi_tm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int ENXIO ; 
 int FUNC2 (struct efi_tm*,struct efi_tmcap*) ; 
 int /*<<< orphan*/ * efi_runtime ; 

int
FUNC3(struct efi_tm *tm)
{
	struct efi_tmcap dummy;
	int error;

	if (efi_runtime == NULL)
		return (ENXIO);
	FUNC0();
	/*
	 * UEFI spec states that the Capabilities argument to GetTime is
	 * optional, but some UEFI implementations choke when passed a NULL
	 * pointer. Pass a dummy efi_tmcap, even though we won't use it,
	 * to workaround such implementations.
	 */
	error = FUNC2(tm, &dummy);
	FUNC1();
	return (error);
}