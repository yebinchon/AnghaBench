#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mad_rmpp_recv {scalar_t__ state; int newwin; int last_ack; int seg_num; int /*<<< orphan*/  lock; struct ib_mad_recv_buf* cur_seg_buf; TYPE_1__* rmpp_wc; } ;
struct TYPE_5__ {int /*<<< orphan*/  list; } ;
struct ib_mad_recv_wc {TYPE_2__ recv_buf; } ;
struct ib_mad_recv_buf {int /*<<< orphan*/  list; } ;
struct ib_mad_agent_private {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  rmpp_list; } ;

/* Variables and functions */
 scalar_t__ RMPP_STATE_COMPLETE ; 
 scalar_t__ RMPP_STATE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct mad_rmpp_recv*,struct ib_mad_recv_wc*) ; 
 struct mad_rmpp_recv* FUNC1 (struct ib_mad_agent_private*,struct ib_mad_recv_wc*) ; 
 struct ib_mad_recv_wc* FUNC2 (struct mad_rmpp_recv*) ; 
 int /*<<< orphan*/  FUNC3 (struct mad_rmpp_recv*) ; 
 struct ib_mad_recv_buf* FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (struct ib_mad_recv_buf*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_mad_recv_wc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct mad_rmpp_recv*,TYPE_2__*) ; 
 scalar_t__ FUNC12 (struct ib_mad_agent_private*) ; 

__attribute__((used)) static struct ib_mad_recv_wc *
FUNC13(struct ib_mad_agent_private *agent,
	      struct ib_mad_recv_wc *mad_recv_wc)
{
	struct mad_rmpp_recv *rmpp_recv;
	struct ib_mad_recv_buf *prev_buf;
	struct ib_mad_recv_wc *done_wc;
	int seg_num;
	unsigned long flags;

	rmpp_recv = FUNC1(agent, mad_recv_wc);
	if (!rmpp_recv)
		goto drop1;

	seg_num = FUNC6(&mad_recv_wc->recv_buf);

	FUNC9(&rmpp_recv->lock, flags);
	if ((rmpp_recv->state == RMPP_STATE_TIMEOUT) ||
	    (seg_num > rmpp_recv->newwin))
		goto drop3;

	if ((seg_num <= rmpp_recv->last_ack) ||
	    (rmpp_recv->state == RMPP_STATE_COMPLETE)) {
		FUNC10(&rmpp_recv->lock, flags);
		FUNC0(rmpp_recv, mad_recv_wc);
		goto drop2;
	}

	prev_buf = FUNC4(&rmpp_recv->rmpp_wc->rmpp_list, seg_num);
	if (!prev_buf)
		goto drop3;

	done_wc = NULL;
	FUNC8(&mad_recv_wc->recv_buf.list, &prev_buf->list);
	if (rmpp_recv->cur_seg_buf == prev_buf) {
		FUNC11(rmpp_recv, &mad_recv_wc->recv_buf);
		if (FUNC5(rmpp_recv->cur_seg_buf)) {
			rmpp_recv->state = RMPP_STATE_COMPLETE;
			FUNC10(&rmpp_recv->lock, flags);
			done_wc = FUNC2(rmpp_recv);
			goto out;
		} else if (rmpp_recv->seg_num == rmpp_recv->newwin) {
			rmpp_recv->newwin += FUNC12(agent);
			FUNC10(&rmpp_recv->lock, flags);
			FUNC0(rmpp_recv, mad_recv_wc);
			goto out;
		}
	}
	FUNC10(&rmpp_recv->lock, flags);
out:
	FUNC3(rmpp_recv);
	return done_wc;

drop3:	FUNC10(&rmpp_recv->lock, flags);
drop2:	FUNC3(rmpp_recv);
drop1:	FUNC7(mad_recv_wc);
	return NULL;
}