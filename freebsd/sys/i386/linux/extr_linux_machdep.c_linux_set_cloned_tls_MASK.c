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
struct thread {TYPE_1__* td_pcb; } ;
struct segment_descriptor {int dummy; } ;
struct l_user_desc {int entry_number; } ;
typedef  int /*<<< orphan*/  a ;
struct TYPE_2__ {int /*<<< orphan*/  pcb_gs; struct segment_descriptor pcb_gsd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GUGS_SEL ; 
 int FUNC1 (struct l_user_desc*) ; 
 int FUNC2 (struct l_user_desc*) ; 
 int /*<<< orphan*/  SEL_UPL ; 
 int FUNC3 (void*,struct l_user_desc*,int) ; 
 int FUNC4 (struct l_user_desc*,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct segment_descriptor*,int**,int) ; 

int
FUNC7(struct thread *td, void *desc)
{
	struct segment_descriptor sd;
	struct l_user_desc info;
	int idx, error;
	int a[2];

	error = FUNC3(desc, &info, sizeof(struct l_user_desc));
	if (error) {
		FUNC5(td, "set_cloned_tls copyin failed!");
	} else {
		idx = info.entry_number;

		/*
		 * looks like we're getting the idx we returned
		 * in the set_thread_area() syscall
		 */
		if (idx != 6 && idx != 3) {
			FUNC5(td, "set_cloned_tls resetting idx!");
			idx = 3;
		}

		/* this doesnt happen in practice */
		if (idx == 6) {
			/* we might copy out the entry_number as 3 */
			info.entry_number = 3;
			error = FUNC4(&info, desc, sizeof(struct l_user_desc));
			if (error)
				FUNC5(td, "set_cloned_tls copyout failed!");
		}

		a[0] = FUNC1(&info);
		a[1] = FUNC2(&info);

		FUNC6(&sd, &a, sizeof(a));
		/* set %gs */
		td->td_pcb->pcb_gsd = sd;
		td->td_pcb->pcb_gs = FUNC0(GUGS_SEL, SEL_UPL);
	}

	return (error);
}