
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int flex7; int flex3; int flex2; int flex1; } ;
union tcp_log_stackspecific {TYPE_4__ u_bbr; } ;
typedef int uint32_t ;
struct TYPE_7__ {int rc_lost; } ;
struct tcp_bbr {int rc_tv; TYPE_3__* rc_inp; TYPE_5__* rc_tp; TYPE_1__ r_ctl; } ;
struct TYPE_12__ {int sb_hiwat; int sb_lowat; } ;
struct TYPE_11__ {scalar_t__ t_logstate; } ;
struct TYPE_9__ {TYPE_2__* inp_socket; } ;
struct TYPE_8__ {TYPE_6__ so_snd; int so_rcv; } ;


 int BBR_LOG_TIME_EPOCH ;
 int TCP_LOG_EVENTP (TYPE_5__*,int *,int *,TYPE_6__*,int ,int ,int ,union tcp_log_stackspecific*,int,int *) ;
 scalar_t__ TCP_LOG_STATE_OFF ;
 int bbr_fill_in_logging_data (struct tcp_bbr*,TYPE_4__*,int ) ;
 scalar_t__ bbr_verbose_logging ;

__attribute__((used)) static void
bbr_log_time_epoch(struct tcp_bbr *bbr, uint32_t cts, uint32_t line, uint32_t epoch_time)
{
 if (bbr_verbose_logging && (bbr->rc_tp->t_logstate != TCP_LOG_STATE_OFF)) {
  union tcp_log_stackspecific log;

  bbr_fill_in_logging_data(bbr, &log.u_bbr, cts);
  log.u_bbr.flex1 = bbr->r_ctl.rc_lost;
  log.u_bbr.flex2 = bbr->rc_inp->inp_socket->so_snd.sb_lowat;
  log.u_bbr.flex3 = bbr->rc_inp->inp_socket->so_snd.sb_hiwat;
  log.u_bbr.flex7 = line;
  TCP_LOG_EVENTP(bbr->rc_tp, ((void*)0),
      &bbr->rc_inp->inp_socket->so_rcv,
      &bbr->rc_inp->inp_socket->so_snd,
      BBR_LOG_TIME_EPOCH, 0,
      0, &log, 0, &bbr->rc_tv);
 }
}
