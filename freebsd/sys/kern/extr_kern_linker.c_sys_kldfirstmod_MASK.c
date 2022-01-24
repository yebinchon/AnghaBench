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
struct thread {int /*<<< orphan*/ * td_retval; int /*<<< orphan*/  td_ucred; } ;
struct kldfirstmod_args {int /*<<< orphan*/  fileid; } ;
typedef  int /*<<< orphan*/ * module_t ;
typedef  TYPE_1__* linker_file_t ;
struct TYPE_3__ {int /*<<< orphan*/  modules; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  MOD_SLOCK ; 
 int /*<<< orphan*/  MOD_SUNLOCK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kld_sx ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(struct thread *td, struct kldfirstmod_args *uap)
{
	linker_file_t lf;
	module_t mp;
	int error = 0;

#ifdef MAC
	error = mac_kld_check_stat(td->td_ucred);
	if (error)
		return (error);
#endif

	FUNC4(&kld_sx);
	lf = FUNC1(uap->fileid);
	if (lf) {
		MOD_SLOCK;
		mp = FUNC0(&lf->modules);
		if (mp != NULL)
			td->td_retval[0] = FUNC3(mp);
		else
			td->td_retval[0] = 0;
		MOD_SUNLOCK;
	} else
		error = ENOENT;
	FUNC5(&kld_sx);
	return (error);
}