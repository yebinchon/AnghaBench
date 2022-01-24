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
typedef  int /*<<< orphan*/  valsize ;
struct thread {int dummy; } ;
struct getsockopt_args {int /*<<< orphan*/  avalsize; scalar_t__ val; int /*<<< orphan*/  name; int /*<<< orphan*/  level; int /*<<< orphan*/  s; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  UIO_USERSPACE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC3(struct thread *td, struct getsockopt_args *uap)
{
	socklen_t valsize;
	int error;

	if (uap->val) {
		error = FUNC0(uap->avalsize, &valsize, sizeof (valsize));
		if (error != 0)
			return (error);
	}

	error = FUNC2(td, uap->s, uap->level, uap->name,
	    uap->val, UIO_USERSPACE, &valsize);

	if (error == 0)
		error = FUNC1(&valsize, uap->avalsize, sizeof (valsize));
	return (error);
}