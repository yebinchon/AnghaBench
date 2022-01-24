#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct thread {int* td_retval; } ;
struct modnext_args {scalar_t__ modid; } ;
typedef  TYPE_1__* module_t ;
struct TYPE_7__ {int id; } ;
struct TYPE_6__ {int id; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  MOD_SLOCK ; 
 int /*<<< orphan*/  MOD_SUNLOCK ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 TYPE_1__* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  modules ; 

int
FUNC3(struct thread *td, struct modnext_args *uap)
{
	module_t mod;
	int error = 0;

	td->td_retval[0] = -1;

	MOD_SLOCK;
	if (uap->modid == 0) {
		mod = FUNC0(&modules);
		if (mod)
			td->td_retval[0] = mod->id;
		else
			error = ENOENT;
		goto done2;
	}
	mod = FUNC2(uap->modid);
	if (mod == NULL) {
		error = ENOENT;
		goto done2;
	}
	if (FUNC1(mod, link))
		td->td_retval[0] = FUNC1(mod, link)->id;
	else
		td->td_retval[0] = 0;
done2:
	MOD_SUNLOCK;
	return (error);
}