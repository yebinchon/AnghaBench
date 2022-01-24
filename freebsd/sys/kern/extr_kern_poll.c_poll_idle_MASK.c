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
struct thread {int /*<<< orphan*/  td_proc; } ;
struct rtprio {int /*<<< orphan*/  type; int /*<<< orphan*/  prio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTP_PRIO_IDLE ; 
 int /*<<< orphan*/  RTP_PRIO_MAX ; 
 int /*<<< orphan*/  SW_VOL ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int hz ; 
 int idlepoll_sleeping ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  poll_each_burst ; 
 scalar_t__ poll_handlers ; 
 scalar_t__ poll_in_idle_loop ; 
 int /*<<< orphan*/  FUNC4 (struct rtprio*,struct thread*) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*) ; 
 int /*<<< orphan*/  FUNC6 (struct thread*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC8(void)
{
	struct thread *td = curthread;
	struct rtprio rtp;

	rtp.prio = RTP_PRIO_MAX;	/* lowest priority */
	rtp.type = RTP_PRIO_IDLE;
	FUNC0(td->td_proc);
	FUNC4(&rtp, td);
	FUNC1(td->td_proc);

	for (;;) {
		if (poll_in_idle_loop && poll_handlers > 0) {
			idlepoll_sleeping = 0;
			FUNC2(poll_each_burst);
			FUNC5(td);
			FUNC3(SW_VOL, NULL);
			FUNC6(td);
		} else {
			idlepoll_sleeping = 1;
			FUNC7(&idlepoll_sleeping, 0, "pollid", hz * 3);
		}
	}
}