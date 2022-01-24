#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct thread {int* td_retval; } ;
struct modfnext_args {int /*<<< orphan*/  modid; } ;
typedef  int /*<<< orphan*/ * module_t ;
struct TYPE_2__ {int id; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  MOD_SLOCK ; 
 int /*<<< orphan*/  MOD_SUNLOCK ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flink ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2(struct thread *td, struct modfnext_args *uap)
{
	module_t mod;
	int error;

	td->td_retval[0] = -1;

	MOD_SLOCK;
	mod = FUNC1(uap->modid);
	if (mod == NULL) {
		error = ENOENT;
	} else {
		error = 0;
		if (FUNC0(mod, flink))
			td->td_retval[0] = FUNC0(mod, flink)->id;
		else
			td->td_retval[0] = 0;
	}
	MOD_SUNLOCK;
	return (error);
}