#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timeval {int tv_sec; int tv_usec; } ;
struct TYPE_3__ {scalar_t__ tv_sec; int /*<<< orphan*/  tv_usec; } ;
struct sctp_stream_queue_pending {int act_flags; scalar_t__ timetolive; int /*<<< orphan*/  sinfo_flags; TYPE_1__ ts; } ;

/* Variables and functions */
#define  CHUNK_FLAGS_PR_SCTP_BUF 130 
#define  CHUNK_FLAGS_PR_SCTP_RTX 129 
#define  CHUNK_FLAGS_PR_SCTP_TTL 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  SCTP_DEBUG_USRREQ1 ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  SCTP_PR_SCTP_TTL ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct timeval*) ; 

__attribute__((used)) static void
FUNC5(struct sctp_stream_queue_pending *sp)
{
	/*
	 * We assume that the user wants PR_SCTP_TTL if the user provides a
	 * positive lifetime but does not specify any PR_SCTP policy.
	 */
	if (FUNC0(sp->sinfo_flags)) {
		sp->act_flags |= FUNC1(sp->sinfo_flags);
	} else if (sp->timetolive > 0) {
		sp->sinfo_flags |= SCTP_PR_SCTP_TTL;
		sp->act_flags |= FUNC1(sp->sinfo_flags);
	} else {
		return;
	}
	switch (FUNC1(sp->sinfo_flags)) {
	case CHUNK_FLAGS_PR_SCTP_BUF:
		/*
		 * Time to live is a priority stored in tv_sec when doing
		 * the buffer drop thing.
		 */
		sp->ts.tv_sec = sp->timetolive;
		sp->ts.tv_usec = 0;
		break;
	case CHUNK_FLAGS_PR_SCTP_TTL:
		{
			struct timeval tv;

			(void)FUNC3(&sp->ts);
			tv.tv_sec = sp->timetolive / 1000;
			tv.tv_usec = (sp->timetolive * 1000) % 1000000;
			/*
			 * TODO sctp_constants.h needs alternative time
			 * macros when _KERNEL is undefined.
			 */
			FUNC4(&sp->ts, &tv);
		}
		break;
	case CHUNK_FLAGS_PR_SCTP_RTX:
		/*
		 * Time to live is a the number or retransmissions stored in
		 * tv_sec.
		 */
		sp->ts.tv_sec = sp->timetolive;
		sp->ts.tv_usec = 0;
		break;
	default:
		FUNC2(SCTP_DEBUG_USRREQ1,
		    "Unknown PR_SCTP policy %u.\n",
		    FUNC1(sp->sinfo_flags));
		break;
	}
}