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
struct timespec {int dummy; } ;
struct thread {int dummy; } ;
struct _umtx_op_args {int /*<<< orphan*/  val; int /*<<< orphan*/  uaddr1; int /*<<< orphan*/  obj; int /*<<< orphan*/ * uaddr2; } ;

/* Variables and functions */
 int FUNC0 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timespec*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct timespec*) ; 

__attribute__((used)) static int
FUNC2(struct thread *td, struct _umtx_op_args *uap)
{
	struct timespec *ts, timeout;
	int error;

	/* Allow a null timespec (wait forever). */
	if (uap->uaddr2 == NULL)
		ts = NULL;
	else {
		error = FUNC1(uap->uaddr2, &timeout);
		if (error != 0)
			return (error);
		ts = &timeout;
	}
	return (FUNC0(td, uap->obj, uap->uaddr1, ts, uap->val));
}