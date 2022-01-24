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
struct itimerval {int dummy; } ;
struct getitimer_args {int /*<<< orphan*/  itv; int /*<<< orphan*/  which; } ;

/* Variables and functions */
 int FUNC0 (struct itimerval*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct thread*,int /*<<< orphan*/ ,struct itimerval*) ; 

int
FUNC2(struct thread *td, struct getitimer_args *uap)
{
	struct itimerval aitv;
	int error;

	error = FUNC1(td, uap->which, &aitv);
	if (error != 0)
		return (error);
	return (FUNC0(&aitv, uap->itv, sizeof (struct itimerval)));
}