
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int cur_del_rate; int delRate; int rttProp; int bw_inuse; int inflight; int delivered; int applimited; int pkts_out; int lt_epoch; int epoch; int flex8; int flex7; int flex6; int flex5; int flex4; int flex3; int flex2; int flex1; } ;
union tcp_log_stackspecific {TYPE_3__ u_bbr; } ;
typedef int uint32_t ;
struct tcp_bbr {int rc_tv; TYPE_2__* rc_inp; TYPE_4__* rc_tp; } ;
struct hpts_diag {int p_curtick; int p_lasttick; int maxticks; int wheel_cts; int wheel_tick; int p_runningtick; int p_prev_slot; int hpts_sleep_time; int co_ret; int yet_to_sleep; int have_slept; int p_on_min_sleep; int p_hpts_active; int need_new_to; int slot_remaining; int inp_hptsslot; int slot_req; int p_cur_slot; int p_nxt_slot; } ;
struct TYPE_8__ {scalar_t__ t_logstate; } ;
struct TYPE_6__ {TYPE_1__* inp_socket; } ;
struct TYPE_5__ {int so_snd; int so_rcv; } ;


 int BBR_LOG_HPTSDIAG ;
 int TCP_LOG_EVENTP (TYPE_4__*,int *,int *,int *,int ,int ,int ,union tcp_log_stackspecific*,int,int *) ;
 scalar_t__ TCP_LOG_STATE_OFF ;
 int bbr_fill_in_logging_data (struct tcp_bbr*,TYPE_3__*,int ) ;
 scalar_t__ bbr_verbose_logging ;

__attribute__((used)) static void
bbr_log_hpts_diag(struct tcp_bbr *bbr, uint32_t cts, struct hpts_diag *diag)
{
 if (bbr_verbose_logging && (bbr->rc_tp->t_logstate != TCP_LOG_STATE_OFF)) {
  union tcp_log_stackspecific log;

  bbr_fill_in_logging_data(bbr, &log.u_bbr, cts);
  log.u_bbr.flex1 = diag->p_nxt_slot;
  log.u_bbr.flex2 = diag->p_cur_slot;
  log.u_bbr.flex3 = diag->slot_req;
  log.u_bbr.flex4 = diag->inp_hptsslot;
  log.u_bbr.flex5 = diag->slot_remaining;
  log.u_bbr.flex6 = diag->need_new_to;
  log.u_bbr.flex7 = diag->p_hpts_active;
  log.u_bbr.flex8 = diag->p_on_min_sleep;

  log.u_bbr.epoch = diag->have_slept;
  log.u_bbr.lt_epoch = diag->yet_to_sleep;
  log.u_bbr.pkts_out = diag->co_ret;
  log.u_bbr.applimited = diag->hpts_sleep_time;
  log.u_bbr.delivered = diag->p_prev_slot;
  log.u_bbr.inflight = diag->p_runningtick;
  log.u_bbr.bw_inuse = diag->wheel_tick;
  log.u_bbr.rttProp = diag->wheel_cts;
  log.u_bbr.delRate = diag->maxticks;
  log.u_bbr.cur_del_rate = diag->p_curtick;
  log.u_bbr.cur_del_rate <<= 32;
  log.u_bbr.cur_del_rate |= diag->p_lasttick;
  TCP_LOG_EVENTP(bbr->rc_tp, ((void*)0),
      &bbr->rc_inp->inp_socket->so_rcv,
      &bbr->rc_inp->inp_socket->so_snd,
      BBR_LOG_HPTSDIAG, 0,
      0, &log, 0, &bbr->rc_tv);
 }
}
