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
struct uuid {int dummy; } ;
struct efirt_callinfo {int ec_argcnt; char* ec_name; uintptr_t ec_arg1; uintptr_t ec_arg2; uintptr_t ec_arg3; int /*<<< orphan*/  ec_fptr; } ;
typedef  int /*<<< orphan*/  efi_char ;
typedef  int /*<<< orphan*/  ec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (struct efirt_callinfo*,int) ; 
 int FUNC2 (struct efirt_callinfo*) ; 
 int /*<<< orphan*/ * efi_runtime ; 
 int /*<<< orphan*/  rt_scanvar ; 

int
FUNC3(size_t *namesize, efi_char *name, struct uuid *vendor)
{
	struct efirt_callinfo ec;

	if (efi_runtime == NULL)
		return (ENXIO);
	FUNC1(&ec, sizeof(ec));
	ec.ec_argcnt = 3;
	ec.ec_name = "rt_scanvar";
	ec.ec_arg1 = (uintptr_t)namesize;
	ec.ec_arg2 = (uintptr_t)name;
	ec.ec_arg3 = (uintptr_t)vendor;
	ec.ec_fptr = FUNC0(rt_scanvar);
	return (FUNC2(&ec));
}