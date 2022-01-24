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
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct procdesc {int pd_flags; int /*<<< orphan*/  pd_selinfo; } ;
struct file {struct procdesc* f_data; } ;

/* Variables and functions */
 int PDF_EXITED ; 
 int PDF_SELECTED ; 
 int POLLHUP ; 
 int /*<<< orphan*/  FUNC0 (struct procdesc*) ; 
 int /*<<< orphan*/  FUNC1 (struct procdesc*) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct file *fp, int events, struct ucred *active_cred,
    struct thread *td)
{
	struct procdesc *pd;
	int revents;

	revents = 0;
	pd = fp->f_data;
	FUNC0(pd);
	if (pd->pd_flags & PDF_EXITED)
		revents |= POLLHUP;
	if (revents == 0) {
		FUNC2(td, &pd->pd_selinfo);
		pd->pd_flags |= PDF_SELECTED;
	}
	FUNC1(pd);
	return (revents);
}