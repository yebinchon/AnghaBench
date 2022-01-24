#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
union tcp_log_stackspecific {int /*<<< orphan*/  u_bbr; } ;
struct timeval {int dummy; } ;
struct tcp_bbr {TYPE_3__* rc_tp; TYPE_2__* rc_inp; } ;
struct sockbuf {int dummy; } ;
struct TYPE_6__ {scalar_t__ t_logstate; } ;
struct TYPE_5__ {TYPE_1__* inp_socket; } ;
struct TYPE_4__ {struct sockbuf so_snd; struct sockbuf so_rcv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,struct sockbuf*,struct sockbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union tcp_log_stackspecific*,int,struct timeval*) ; 
 int /*<<< orphan*/  TCP_LOG_FLOWEND ; 
 scalar_t__ TCP_LOG_STATE_OFF ; 
 int /*<<< orphan*/  FUNC1 (struct tcp_bbr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*) ; 

__attribute__((used)) static void
FUNC3(struct tcp_bbr *bbr)
{
	if (bbr->rc_tp->t_logstate != TCP_LOG_STATE_OFF) {
		union tcp_log_stackspecific log;
		struct sockbuf *r, *s;
		struct timeval tv;

		if (bbr->rc_inp->inp_socket) {
			r = &bbr->rc_inp->inp_socket->so_rcv;
			s = &bbr->rc_inp->inp_socket->so_snd;
		} else {
			r = s = NULL;
		}
		FUNC1(bbr, &log.u_bbr, FUNC2(&tv));
		FUNC0(bbr->rc_tp, NULL,
		    r, s,
		    TCP_LOG_FLOWEND, 0,
		    0, &log, false, &tv);
	}
}