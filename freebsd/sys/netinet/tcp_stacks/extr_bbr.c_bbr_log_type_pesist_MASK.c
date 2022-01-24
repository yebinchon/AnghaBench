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
struct TYPE_7__ {int /*<<< orphan*/  flex8; int /*<<< orphan*/  flex2; int /*<<< orphan*/  flex1; } ;
union tcp_log_stackspecific {TYPE_3__ u_bbr; } ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct tcp_bbr {int /*<<< orphan*/  rc_tv; TYPE_2__* rc_inp; TYPE_4__* rc_tp; } ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_8__ {scalar_t__ t_logstate; } ;
struct TYPE_6__ {TYPE_1__* inp_socket; } ;
struct TYPE_5__ {int /*<<< orphan*/  so_snd; int /*<<< orphan*/  so_rcv; } ;

/* Variables and functions */
 int /*<<< orphan*/  BBR_LOG_PERSIST ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union tcp_log_stackspecific*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ TCP_LOG_STATE_OFF ; 
 int /*<<< orphan*/  FUNC1 (struct tcp_bbr*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ bbr_verbose_logging ; 

__attribute__((used)) static void
FUNC2(struct tcp_bbr *bbr, uint32_t cts, uint32_t time_in, int32_t line, uint8_t enter_exit)
{
	if (bbr_verbose_logging && (bbr->rc_tp->t_logstate != TCP_LOG_STATE_OFF)) {
		union tcp_log_stackspecific log;

		FUNC1(bbr, &log.u_bbr, cts);
		log.u_bbr.flex1 = time_in;
		log.u_bbr.flex2 = line;
		log.u_bbr.flex8 = enter_exit;
		FUNC0(bbr->rc_tp, NULL,
		    &bbr->rc_inp->inp_socket->so_rcv,
		    &bbr->rc_inp->inp_socket->so_snd,
		    BBR_LOG_PERSIST, 0,
		    0, &log, false, &bbr->rc_tv);
	}
}