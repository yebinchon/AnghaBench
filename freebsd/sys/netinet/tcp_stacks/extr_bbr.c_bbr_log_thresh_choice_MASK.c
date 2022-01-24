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
struct TYPE_9__ {int /*<<< orphan*/  flex8; int /*<<< orphan*/  flex7; void* flex6; int /*<<< orphan*/  flex5; int /*<<< orphan*/  flex4; int /*<<< orphan*/  flex3; void* flex2; void* flex1; } ;
union tcp_log_stackspecific {TYPE_4__ u_bbr; } ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  void* uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  rc_reorder_shift; int /*<<< orphan*/  rc_reorder_ts; } ;
struct tcp_bbr {int /*<<< orphan*/  rc_tv; TYPE_3__* rc_inp; TYPE_5__* rc_tp; TYPE_1__ r_ctl; } ;
struct bbr_sendmap {int r_rtr_cnt; int /*<<< orphan*/ * r_tim_lastsent; } ;
struct TYPE_10__ {scalar_t__ t_logstate; int /*<<< orphan*/  t_rxtcur; } ;
struct TYPE_8__ {TYPE_2__* inp_socket; } ;
struct TYPE_7__ {int /*<<< orphan*/  so_snd; int /*<<< orphan*/  so_rcv; } ;

/* Variables and functions */
 int /*<<< orphan*/  BBR_LOG_THRESH_CALC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union tcp_log_stackspecific*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ TCP_LOG_STATE_OFF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tcp_bbr*,TYPE_4__*,void*) ; 
 scalar_t__ bbr_verbose_logging ; 

__attribute__((used)) static void
FUNC3(struct tcp_bbr *bbr, uint32_t cts, uint32_t thresh, uint32_t lro, uint32_t srtt, struct bbr_sendmap *rsm, uint8_t frm)
{
	if (bbr_verbose_logging && (bbr->rc_tp->t_logstate != TCP_LOG_STATE_OFF)) {
		union tcp_log_stackspecific log;

		FUNC2(bbr, &log.u_bbr, cts);
		log.u_bbr.flex1 = thresh;
		log.u_bbr.flex2 = lro;
		log.u_bbr.flex3 = bbr->r_ctl.rc_reorder_ts;
		log.u_bbr.flex4 = rsm->r_tim_lastsent[(rsm->r_rtr_cnt - 1)];
		log.u_bbr.flex5 = FUNC1(bbr->rc_tp->t_rxtcur);
		log.u_bbr.flex6 = srtt;
		log.u_bbr.flex7 = bbr->r_ctl.rc_reorder_shift;
		log.u_bbr.flex8 = frm;
		FUNC0(bbr->rc_tp, NULL,
		    &bbr->rc_inp->inp_socket->so_rcv,
		    &bbr->rc_inp->inp_socket->so_snd,
		    BBR_LOG_THRESH_CALC, 0,
		    0, &log, false, &bbr->rc_tv);
	}
}