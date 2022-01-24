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
struct timeval {int dummy; } ;
struct timespec {int dummy; } ;
struct thread {int dummy; } ;
struct pselect_args {int /*<<< orphan*/  ex; int /*<<< orphan*/  ou; int /*<<< orphan*/  in; int /*<<< orphan*/  nd; int /*<<< orphan*/ * sm; int /*<<< orphan*/ * ts; } ;
typedef  struct timespec sigset_t ;
typedef  int /*<<< orphan*/  set ;

/* Variables and functions */
 int /*<<< orphan*/  NFDBITS ; 
 int /*<<< orphan*/  FUNC0 (struct timeval*,struct timespec*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct timespec*,int) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval*,struct timespec*,int /*<<< orphan*/ ) ; 

int
FUNC3(struct thread *td, struct pselect_args *uap)
{
	struct timespec ts;
	struct timeval tv, *tvp;
	sigset_t set, *uset;
	int error;

	if (uap->ts != NULL) {
		error = FUNC1(uap->ts, &ts, sizeof(ts));
		if (error != 0)
		    return (error);
		FUNC0(&tv, &ts);
		tvp = &tv;
	} else
		tvp = NULL;
	if (uap->sm != NULL) {
		error = FUNC1(uap->sm, &set, sizeof(set));
		if (error != 0)
			return (error);
		uset = &set;
	} else
		uset = NULL;
	return (FUNC2(td, uap->nd, uap->in, uap->ou, uap->ex, tvp,
	    uset, NFDBITS));
}