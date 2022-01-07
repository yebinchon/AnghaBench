
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int flex4; int use_lt_bw; int inflight; int cur_del_rate; int lost; int pkts_out; int lt_epoch; int epoch; int timeStamp; int delivered; int applimited; int flex6; int flex5; int flex3; int flex2; int flex1; } ;
union tcp_log_stackspecific {TYPE_3__ u_bbr; } ;
struct timeval {int dummy; } ;
struct tcpcb {TYPE_2__* t_inpcb; } ;
struct tcp_hpts_entry {int p_runningtick; int p_hpts_sleep_time; int p_delayed_by; int saved_prev_slot; int saved_curslot; int saved_curtick; int overidden_sleep; int p_on_queue_cnt; int p_curtick; int p_prev_slot; int p_cur_slot; int p_nxt_slot; } ;
struct TYPE_5__ {TYPE_1__* inp_socket; } ;
struct TYPE_4__ {int so_snd; int so_rcv; } ;


 int BBR_LOG_HPTSDIAG ;
 int TCP_LOG_EVENTP (struct tcpcb*,int *,int *,int *,int ,int ,int ,union tcp_log_stackspecific*,int,struct timeval*) ;
 int memset (TYPE_3__*,int ,int) ;
 int tcp_tv_to_usectick (struct timeval*) ;

__attribute__((used)) static void
tcp_hpts_log(struct tcp_hpts_entry *hpts, struct tcpcb *tp, struct timeval *tv,
      int ticks_to_run, int idx)
{
 union tcp_log_stackspecific log;

 memset(&log.u_bbr, 0, sizeof(log.u_bbr));
 log.u_bbr.flex1 = hpts->p_nxt_slot;
 log.u_bbr.flex2 = hpts->p_cur_slot;
 log.u_bbr.flex3 = hpts->p_prev_slot;
 log.u_bbr.flex4 = idx;
 log.u_bbr.flex5 = hpts->p_curtick;
 log.u_bbr.flex6 = hpts->p_on_queue_cnt;
 log.u_bbr.use_lt_bw = 1;
 log.u_bbr.inflight = ticks_to_run;
 log.u_bbr.applimited = hpts->overidden_sleep;
 log.u_bbr.delivered = hpts->saved_curtick;
 log.u_bbr.timeStamp = tcp_tv_to_usectick(tv);
 log.u_bbr.epoch = hpts->saved_curslot;
 log.u_bbr.lt_epoch = hpts->saved_prev_slot;
 log.u_bbr.pkts_out = hpts->p_delayed_by;
 log.u_bbr.lost = hpts->p_hpts_sleep_time;
 log.u_bbr.cur_del_rate = hpts->p_runningtick;
 TCP_LOG_EVENTP(tp, ((void*)0),
         &tp->t_inpcb->inp_socket->so_rcv,
         &tp->t_inpcb->inp_socket->so_snd,
         BBR_LOG_HPTSDIAG, 0,
         0, &log, 0, tv);
}
