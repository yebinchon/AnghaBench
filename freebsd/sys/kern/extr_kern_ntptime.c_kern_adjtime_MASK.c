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
struct timeval {int tv_sec; int tv_usec; } ;
struct thread {int dummy; } ;
typedef  int int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  PRIV_ADJTIME ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ) ; 
 int time_adjtime ; 

int
FUNC3(struct thread *td, struct timeval *delta, struct timeval *olddelta)
{
	struct timeval atv;
	int64_t ltr, ltw;
	int error;

	if (delta != NULL) {
		error = FUNC2(td, PRIV_ADJTIME);
		if (error != 0)
			return (error);
		ltw = (int64_t)delta->tv_sec * 1000000 + delta->tv_usec;
	}
	FUNC0();
	ltr = time_adjtime;
	if (delta != NULL)
		time_adjtime = ltw;
	FUNC1();
	if (olddelta != NULL) {
		atv.tv_sec = ltr / 1000000;
		atv.tv_usec = ltr % 1000000;
		if (atv.tv_usec < 0) {
			atv.tv_usec += 1000000;
			atv.tv_sec--;
		}
		*olddelta = atv;
	}
	return (0);
}