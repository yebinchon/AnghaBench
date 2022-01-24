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
typedef  int /*<<< orphan*/  ts ;
struct timespec {int dummy; } ;
struct thread {int /*<<< orphan*/ * td_retval; } ;
struct kevent_copyops {int /*<<< orphan*/  kevent_size; } ;
struct kevent {int dummy; } ;
struct g_kevent_args {int /*<<< orphan*/  nevents; int /*<<< orphan*/  nchanges; int /*<<< orphan*/  fd; struct kevent* changelist; int /*<<< orphan*/ * timeout; struct kevent* eventlist; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KTR_STRUCT_ARRAY ; 
 int /*<<< orphan*/  UIO_USERSPACE ; 
 int FUNC1 (int /*<<< orphan*/ *,struct timespec*,int) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kevent_copyops*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,struct kevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct thread *td, struct g_kevent_args *uap,
    struct kevent_copyops *k_ops, const char *struct_name)
{
	struct timespec ts, *tsp;
#ifdef KTRACE
	struct kevent *eventlist = uap->eventlist;
#endif
	int error;

	if (uap->timeout != NULL) {
		error = FUNC1(uap->timeout, &ts, sizeof(ts));
		if (error)
			return (error);
		tsp = &ts;
	} else
		tsp = NULL;

#ifdef KTRACE
	if (KTRPOINT(td, KTR_STRUCT_ARRAY))
		ktrstructarray(struct_name, UIO_USERSPACE, uap->changelist,
		    uap->nchanges, k_ops->kevent_size);
#endif

	error = FUNC2(td, uap->fd, uap->nchanges, uap->nevents,
	    k_ops, tsp);

#ifdef KTRACE
	if (error == 0 && KTRPOINT(td, KTR_STRUCT_ARRAY))
		ktrstructarray(struct_name, UIO_USERSPACE, eventlist,
		    td->td_retval[0], k_ops->kevent_size);
#endif

	return (error);
}