#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  size_t uint16_t ;
struct TYPE_7__ {size_t streamoutcnt; TYPE_4__* strmout; } ;
struct sctp_tcb {TYPE_3__ asoc; } ;
struct sctp_stream_queue_pending {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  list; } ;
struct TYPE_6__ {TYPE_1__ out; } ;
struct sctp_association {TYPE_2__ ss_data; } ;
struct TYPE_8__ {int /*<<< orphan*/  outqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sctp_tcb*) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_tcb*) ; 
 struct sctp_stream_queue_pending* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct sctp_stream_queue_pending* FUNC4 (struct sctp_stream_queue_pending*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_tcb*,TYPE_3__*,TYPE_4__*,struct sctp_stream_queue_pending*,int) ; 

__attribute__((used)) static void
FUNC6(struct sctp_tcb *stcb, struct sctp_association *asoc,
    int holds_lock)
{
	uint32_t x, n = 0, add_more = 1;
	struct sctp_stream_queue_pending *sp;
	uint16_t i;

	if (holds_lock == 0) {
		FUNC0(stcb);
	}
	FUNC3(&asoc->ss_data.out.list);
	/*
	 * If there is data in the stream queues already, the scheduler of
	 * an existing association has been changed. We can only cycle
	 * through the stream queues and add everything to the FCFS queue.
	 */
	while (add_more) {
		add_more = 0;
		for (i = 0; i < stcb->asoc.streamoutcnt; i++) {
			sp = FUNC2(&stcb->asoc.strmout[i].outqueue);
			x = 0;
			/* Find n. message in current stream queue */
			while (sp != NULL && x < n) {
				sp = FUNC4(sp, next);
				x++;
			}
			if (sp != NULL) {
				FUNC5(stcb, &stcb->asoc, &stcb->asoc.strmout[i], sp, 1);
				add_more = 1;
			}
		}
		n++;
	}
	if (holds_lock == 0) {
		FUNC1(stcb);
	}
	return;
}