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
struct icl_pdu_stailq {int dummy; } ;
struct icl_conn {int ic_check_send_space; int ic_send_running; int /*<<< orphan*/  ic_send_cv; struct icl_pdu_stailq ic_to_send; int /*<<< orphan*/  ic_lock; scalar_t__ ic_disconnecting; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct icl_conn*) ; 
 int /*<<< orphan*/  FUNC1 (struct icl_conn*) ; 
 int /*<<< orphan*/  FUNC2 (struct icl_pdu_stailq*,struct icl_pdu_stailq*) ; 
 scalar_t__ FUNC3 (struct icl_pdu_stailq*) ; 
 int /*<<< orphan*/  FUNC4 (struct icl_pdu_stailq*) ; 
 int /*<<< orphan*/  FUNC5 (struct icl_pdu_stailq*,struct icl_pdu_stailq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct icl_conn*,struct icl_pdu_stailq*) ; 
 int /*<<< orphan*/  icl_pdu ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void
FUNC10(void *arg)
{
	struct icl_conn *ic;
	struct icl_pdu_stailq queue;

	ic = arg;

	FUNC4(&queue);

	FUNC0(ic);
	for (;;) {
		for (;;) {
			/*
			 * If the local queue is empty, populate it from
			 * the main one.  This way the icl_conn_send_pdus()
			 * can go through all the queued PDUs without holding
			 * any locks.
			 */
			if (FUNC3(&queue))
				FUNC5(&ic->ic_to_send, &queue, icl_pdu);

			ic->ic_check_send_space = false;
			FUNC1(ic);
			FUNC8(ic, &queue);
			FUNC0(ic);

			/*
			 * The icl_soupcall_send() was called since the last
			 * call to sbspace(); go around;
			 */
			if (ic->ic_check_send_space)
				continue;

			/*
			 * Local queue is empty, but we still have PDUs
			 * in the main one; go around.
			 */
			if (FUNC3(&queue) &&
			    !FUNC3(&ic->ic_to_send))
				continue;

			/*
			 * There might be some stuff in the local queue,
			 * which didn't get sent due to not having enough send
			 * space.  Wait for socket upcall.
			 */
			break;
		}

		if (ic->ic_disconnecting) {
			//ICL_DEBUG("terminating");
			break;
		}

		FUNC7(&ic->ic_send_cv, ic->ic_lock);
	}

	/*
	 * We're exiting; move PDUs back to the main queue, so they can
	 * get freed properly.  At this point ordering doesn't matter.
	 */
	FUNC2(&ic->ic_to_send, &queue);

	ic->ic_send_running = false;
	FUNC6(&ic->ic_send_cv);
	FUNC1(ic);
	FUNC9();
}