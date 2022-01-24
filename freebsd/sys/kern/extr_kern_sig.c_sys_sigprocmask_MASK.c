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
struct thread {int dummy; } ;
struct sigprocmask_args {int /*<<< orphan*/ * oset; int /*<<< orphan*/  how; int /*<<< orphan*/ * set; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  set ;
typedef  int /*<<< orphan*/  oset ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC3(struct thread *td, struct sigprocmask_args *uap)
{
	sigset_t set, oset;
	sigset_t *setp, *osetp;
	int error;

	setp = (uap->set != NULL) ? &set : NULL;
	osetp = (uap->oset != NULL) ? &oset : NULL;
	if (setp) {
		error = FUNC0(uap->set, setp, sizeof(set));
		if (error)
			return (error);
	}
	error = FUNC2(td, uap->how, setp, osetp, 0);
	if (osetp && !error) {
		error = FUNC1(osetp, uap->oset, sizeof(oset));
	}
	return (error);
}