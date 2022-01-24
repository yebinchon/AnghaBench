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
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct reboot_args {int opt; } ;

/* Variables and functions */
 int /*<<< orphan*/  PRIV_REBOOT ; 
 int RB_REROOT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct thread*,int /*<<< orphan*/ ) ; 

int
FUNC4(struct thread *td, struct reboot_args *uap)
{
	int error;

	error = 0;
#ifdef MAC
	error = mac_system_check_reboot(td->td_ucred, uap->opt);
#endif
	if (error == 0)
		error = FUNC3(td, PRIV_REBOOT);
	if (error == 0) {
		if (uap->opt & RB_REROOT)
			error = FUNC1();
		else
			FUNC0(uap->opt);
	}
	return (error);
}