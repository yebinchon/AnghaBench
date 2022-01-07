
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int flex3; int flex2; int flex1; } ;
union tcp_log_stackspecific {TYPE_4__ u_bbr; } ;
typedef int uint32_t ;
struct TYPE_6__ {int rc_recovery_start; int rc_cwnd_on_ent; int rc_rcvtime; } ;
struct tcp_bbr {int rc_tv; TYPE_3__* rc_inp; TYPE_5__* rc_tp; TYPE_1__ r_ctl; } ;
struct TYPE_10__ {scalar_t__ t_logstate; } ;
struct TYPE_8__ {TYPE_2__* inp_socket; } ;
struct TYPE_7__ {int so_snd; int so_rcv; } ;


 int BBR_LOG_ENTREC ;
 int TCP_LOG_EVENTP (TYPE_5__*,int *,int *,int *,int ,int ,int ,union tcp_log_stackspecific*,int,int *) ;
 scalar_t__ TCP_LOG_STATE_OFF ;
 int bbr_fill_in_logging_data (struct tcp_bbr*,TYPE_4__*,int ) ;

__attribute__((used)) static void
bbr_log_type_enter_rec(struct tcp_bbr *bbr, uint32_t seq)
{
 if (bbr->rc_tp->t_logstate != TCP_LOG_STATE_OFF) {
  union tcp_log_stackspecific log;

  bbr_fill_in_logging_data(bbr, &log.u_bbr, bbr->r_ctl.rc_rcvtime);
  log.u_bbr.flex1 = seq;
  log.u_bbr.flex2 = bbr->r_ctl.rc_cwnd_on_ent;
  log.u_bbr.flex3 = bbr->r_ctl.rc_recovery_start;
  TCP_LOG_EVENTP(bbr->rc_tp, ((void*)0),
      &bbr->rc_inp->inp_socket->so_rcv,
      &bbr->rc_inp->inp_socket->so_snd,
      BBR_LOG_ENTREC, 0,
      0, &log, 0, &bbr->rc_tv);
 }
}
