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
struct efirt_callinfo {char* ec_name; int ec_argcnt; uintptr_t ec_arg1; int /*<<< orphan*/  ec_fptr; } ;
struct efi_tm {int dummy; } ;
typedef  int /*<<< orphan*/  ec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC2 (struct efirt_callinfo*,int) ; 
 int FUNC3 (struct efirt_callinfo*) ; 
 int /*<<< orphan*/ * efi_runtime ; 
 int /*<<< orphan*/  rt_settime ; 

__attribute__((used)) static int
FUNC4(struct efi_tm *tm)
{
	struct efirt_callinfo ec;

	FUNC1();
	if (efi_runtime == NULL)
		return (ENXIO);
	FUNC2(&ec, sizeof(ec));
	ec.ec_name = "rt_settime";
	ec.ec_argcnt = 1;
	ec.ec_arg1 = (uintptr_t)tm;
	ec.ec_fptr = FUNC0(rt_settime);
	return (FUNC3(&ec));
}