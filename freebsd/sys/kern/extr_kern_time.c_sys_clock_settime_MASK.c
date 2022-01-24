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
struct clock_settime_args {int /*<<< orphan*/  clock_id; int /*<<< orphan*/  tp; } ;
typedef  int /*<<< orphan*/  ats ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct timespec*,int) ; 
 int FUNC1 (struct thread*,int /*<<< orphan*/ ,struct timespec*) ; 

int
FUNC2(struct thread *td, struct clock_settime_args *uap)
{
	struct timespec ats;
	int error;

	if ((error = FUNC0(uap->tp, &ats, sizeof(ats))) != 0)
		return (error);
	return (FUNC1(td, uap->clock_id, &ats));
}