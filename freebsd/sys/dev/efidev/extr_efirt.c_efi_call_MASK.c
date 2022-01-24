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
struct efirt_callinfo {char* ec_name; int /*<<< orphan*/  ec_efi_status; } ;

/* Variables and functions */
 scalar_t__ bootverbose ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct efirt_callinfo*) ; 
 int FUNC3 (struct efirt_callinfo*) ; 
 scalar_t__ efi_rt_handle_faults ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC6(struct efirt_callinfo *ecp)
{
	int error;

	error = FUNC0();
	if (error != 0)
		return (error);
	error = efi_rt_handle_faults ? FUNC2(ecp) :
	    FUNC3(ecp);
	FUNC1();
	if (error == 0)
		error = FUNC4(ecp->ec_efi_status);
	else if (bootverbose)
		FUNC5("EFI %s call faulted, error %d\n", ecp->ec_name, error);
	return (error);
}