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
typedef  int /*<<< orphan*/  ts ;
struct timespec {int dummy; } ;
struct thread {int dummy; } ;
struct aio_waitcomplete_args {int /*<<< orphan*/  aiocbp; scalar_t__ timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  aiocb_ops ; 
 int FUNC0 (scalar_t__,struct timespec*,int) ; 
 int FUNC1 (struct thread*,int /*<<< orphan*/ ,struct timespec*,int /*<<< orphan*/ *) ; 

int
FUNC2(struct thread *td, struct aio_waitcomplete_args *uap)
{
	struct timespec ts, *tsp;
	int error;

	if (uap->timeout) {
		/* Get timespec struct. */
		error = FUNC0(uap->timeout, &ts, sizeof(ts));
		if (error)
			return (error);
		tsp = &ts;
	} else
		tsp = NULL;

	return (FUNC1(td, uap->aiocbp, tsp, &aiocb_ops));
}