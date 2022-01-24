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
struct sched_param {int dummy; } ;
struct ksched {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ksched*,struct thread*,int*) ; 
 int FUNC1 (struct ksched*,struct thread*,int,struct sched_param const*) ; 

int
FUNC2(struct ksched *ksched,
    struct thread *td, const struct sched_param *param)
{
	int e, policy;

	e = FUNC0(ksched, td, &policy);
	if (e == 0)
		e = FUNC1(ksched, td, policy, param);
	return (e);
}