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
struct thread {long* td_retval; } ;
struct fpathconf_args {int /*<<< orphan*/  name; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int FUNC0 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long*) ; 

int
FUNC1(struct thread *td, struct fpathconf_args *uap)
{
	long value;
	int error;

	error = FUNC0(td, uap->fd, uap->name, &value);
	if (error == 0)
		td->td_retval[0] = value;
	return (error);
}