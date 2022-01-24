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
struct linux_ioperm_args {int /*<<< orphan*/  enable; int /*<<< orphan*/  length; int /*<<< orphan*/  start; } ;
struct i386_ioperm_args {int /*<<< orphan*/  enable; int /*<<< orphan*/  length; int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int FUNC0 (struct thread*,struct i386_ioperm_args*) ; 

int
FUNC1(struct thread *td, struct linux_ioperm_args *args)
{
	int error;
	struct i386_ioperm_args iia;

	iia.start = args->start;
	iia.length = args->length;
	iia.enable = args->enable;
	error = FUNC0(td, &iia);
	return (error);
}