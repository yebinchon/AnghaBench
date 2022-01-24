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
typedef  int /*<<< orphan*/  ts ;
struct timespec {int dummy; } ;
struct thread {int /*<<< orphan*/ * td_retval; } ;
struct sigtimedwait_args {int /*<<< orphan*/  info; scalar_t__ set; scalar_t__ timeout; } ;
typedef  struct timespec sigset_t ;
typedef  int /*<<< orphan*/  siginfo_t ;
typedef  int /*<<< orphan*/  set ;
struct TYPE_3__ {int /*<<< orphan*/  ksi_signo; int /*<<< orphan*/  ksi_info; } ;
typedef  TYPE_1__ ksiginfo_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__,struct timespec*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct thread*,struct timespec,TYPE_1__*,struct timespec*) ; 

int
FUNC3(struct thread *td, struct sigtimedwait_args *uap)
{
	struct timespec ts;
	struct timespec *timeout;
	sigset_t set;
	ksiginfo_t ksi;
	int error;

	if (uap->timeout) {
		error = FUNC0(uap->timeout, &ts, sizeof(ts));
		if (error)
			return (error);

		timeout = &ts;
	} else
		timeout = NULL;

	error = FUNC0(uap->set, &set, sizeof(set));
	if (error)
		return (error);

	error = FUNC2(td, set, &ksi, timeout);
	if (error)
		return (error);

	if (uap->info)
		error = FUNC1(&ksi.ksi_info, uap->info, sizeof(siginfo_t));

	if (error == 0)
		td->td_retval[0] = ksi.ksi_signo;
	return (error);
}