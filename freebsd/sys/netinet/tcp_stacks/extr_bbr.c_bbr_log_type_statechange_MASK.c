#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int flex7; int pkts_out; int /*<<< orphan*/  lt_epoch; int /*<<< orphan*/  flex6; int /*<<< orphan*/  flex5; void* flex4; int /*<<< orphan*/  flex3; int /*<<< orphan*/  flex2; int /*<<< orphan*/  flex1; } ;
union tcp_log_stackspecific {TYPE_4__ u_bbr; } ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_6__ {int rc_target_at_state; int /*<<< orphan*/  rc_level_state_extra; int /*<<< orphan*/  rc_lost_at_startup; int /*<<< orphan*/  rc_bbr_last_startup_epoch; int /*<<< orphan*/  rc_probertt_int; int /*<<< orphan*/  rc_rtt_shrinks; } ;
struct tcp_bbr {int /*<<< orphan*/  rc_tv; TYPE_3__* rc_inp; TYPE_5__* rc_tp; TYPE_1__ r_ctl; } ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_10__ {scalar_t__ t_logstate; } ;
struct TYPE_8__ {TYPE_2__* inp_socket; } ;
struct TYPE_7__ {int /*<<< orphan*/  so_snd; int /*<<< orphan*/  so_rcv; } ;

/* Variables and functions */
 int /*<<< orphan*/  BBR_LOG_STATE ; 
 int /*<<< orphan*/  BBR_RTT_PKTRTT ; 
 int /*<<< orphan*/  BBR_RTT_PROP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union tcp_log_stackspecific*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ TCP_LOG_STATE_OFF ; 
 int /*<<< orphan*/  FUNC1 (struct tcp_bbr*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct tcp_bbr*,int /*<<< orphan*/ ) ; 
 scalar_t__ bbr_state_is_pkt_epoch ; 

__attribute__((used)) static void
FUNC3(struct tcp_bbr *bbr, uint32_t cts, int32_t line)
{
	if (bbr->rc_tp->t_logstate != TCP_LOG_STATE_OFF) {
		union tcp_log_stackspecific log;

		FUNC1(bbr, &log.u_bbr, cts);
		log.u_bbr.flex1 = line;
		log.u_bbr.flex2 = bbr->r_ctl.rc_rtt_shrinks;
		log.u_bbr.flex3 = bbr->r_ctl.rc_probertt_int;
		if (bbr_state_is_pkt_epoch)
			log.u_bbr.flex4 = FUNC2(bbr, BBR_RTT_PKTRTT);
		else
			log.u_bbr.flex4 = FUNC2(bbr, BBR_RTT_PROP);
		log.u_bbr.flex5 = bbr->r_ctl.rc_bbr_last_startup_epoch;
		log.u_bbr.flex6 = bbr->r_ctl.rc_lost_at_startup;
		log.u_bbr.flex7 = (bbr->r_ctl.rc_target_at_state/1000);
		log.u_bbr.lt_epoch = bbr->r_ctl.rc_level_state_extra;
		log.u_bbr.pkts_out = bbr->r_ctl.rc_target_at_state;
		FUNC0(bbr->rc_tp, NULL,
		    &bbr->rc_inp->inp_socket->so_rcv,
		    &bbr->rc_inp->inp_socket->so_snd,
		    BBR_LOG_STATE, 0,
		    0, &log, false, &bbr->rc_tv);
	}
}