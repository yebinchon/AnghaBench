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
typedef  int /*<<< orphan*/  val ;
struct thread {int dummy; } ;
struct ktimer_gettime_args {int /*<<< orphan*/  value; int /*<<< orphan*/  timerid; } ;
struct itimerspec {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct itimerspec*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct thread*,int /*<<< orphan*/ ,struct itimerspec*) ; 

int
FUNC2(struct thread *td, struct ktimer_gettime_args *uap)
{
	struct itimerspec val;
	int error;

	error = FUNC1(td, uap->timerid, &val);
	if (error == 0)
		error = FUNC0(&val, uap->value, sizeof(val));
	return (error);
}