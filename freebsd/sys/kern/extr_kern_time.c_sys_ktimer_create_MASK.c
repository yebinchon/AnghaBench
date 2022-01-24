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
struct ktimer_create_args {int /*<<< orphan*/  timerid; int /*<<< orphan*/  clock_id; int /*<<< orphan*/ * evp; } ;
typedef  int /*<<< orphan*/  ev ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct sigevent*,int) ; 
 int FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,struct sigevent*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*,int) ; 

int
FUNC4(struct thread *td, struct ktimer_create_args *uap)
{
	struct sigevent *evp, ev;
	int id;
	int error;

	if (uap->evp == NULL) {
		evp = NULL;
	} else {
		error = FUNC0(uap->evp, &ev, sizeof(ev));
		if (error != 0)
			return (error);
		evp = &ev;
	}
	error = FUNC2(td, uap->clock_id, evp, &id, -1);
	if (error == 0) {
		error = FUNC1(&id, uap->timerid, sizeof(int));
		if (error != 0)
			FUNC3(td, id);
	}
	return (error);
}