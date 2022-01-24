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
struct clock_getres_args {int /*<<< orphan*/ * tp; int /*<<< orphan*/  clock_id; } ;

/* Variables and functions */
 int FUNC0 (struct timespec*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct thread*,int /*<<< orphan*/ ,struct timespec*) ; 

int
FUNC2(struct thread *td, struct clock_getres_args *uap)
{
	struct timespec ts;
	int error;

	if (uap->tp == NULL)
		return (0);

	error = FUNC1(td, uap->clock_id, &ts);
	if (error == 0)
		error = FUNC0(&ts, uap->tp, sizeof(ts));
	return (error);
}