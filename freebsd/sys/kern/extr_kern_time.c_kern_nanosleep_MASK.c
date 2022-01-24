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

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int /*<<< orphan*/  TIMER_RELTIME ; 
 int FUNC0 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timespec*,struct timespec*) ; 

int
FUNC1(struct thread *td, struct timespec *rqt, struct timespec *rmt)
{

	return (FUNC0(td, CLOCK_REALTIME, TIMER_RELTIME, rqt,
	    rmt));
}