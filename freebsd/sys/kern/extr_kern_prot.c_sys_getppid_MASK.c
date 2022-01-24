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
struct thread {int /*<<< orphan*/ * td_retval; } ;
struct getppid_args {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct thread*) ; 

int
FUNC1(struct thread *td, struct getppid_args *uap)
{

	td->td_retval[0] = FUNC0(td);
	return (0);
}