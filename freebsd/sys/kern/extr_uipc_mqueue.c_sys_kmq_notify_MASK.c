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
struct sigevent {int dummy; } ;
struct kmq_notify_args {int /*<<< orphan*/  mqd; int /*<<< orphan*/ * sigev; } ;
typedef  int /*<<< orphan*/  ev ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct sigevent*,int) ; 
 int FUNC1 (struct thread*,int /*<<< orphan*/ ,struct sigevent*) ; 

int
FUNC2(struct thread *td, struct kmq_notify_args *uap)
{
	struct sigevent ev, *evp;
	int error;

	if (uap->sigev == NULL) {
		evp = NULL;
	} else {
		error = FUNC0(uap->sigev, &ev, sizeof(ev));
		if (error != 0)
			return (error);
		evp = &ev;
	}
	return (FUNC1(td, uap->mqd, evp));
}