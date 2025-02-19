
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int applimited; scalar_t__ pkts_out; int flex8; void* flex7; int flex6; int flex5; int flex4; int flex3; int flex2; void* flex1; } ;
union tcp_log_stackspecific {TYPE_4__ u_bbr; } ;
typedef int uint8_t ;
typedef void* uint32_t ;
struct TYPE_6__ {int rc_last_delay_val; int rc_timer_exp; int rc_hpts_flags; } ;
struct tcp_bbr {int rc_tv; TYPE_3__* rc_inp; TYPE_5__* rc_tp; int rc_in_persist; TYPE_1__ r_ctl; } ;
struct TYPE_10__ {scalar_t__ t_logstate; } ;
struct TYPE_8__ {TYPE_2__* inp_socket; } ;
struct TYPE_7__ {int so_snd; int so_rcv; } ;


 int BBR_LOG_JUSTRET ;
 int TCP_LOG_EVENTP (TYPE_5__*,int *,int *,int *,int ,int ,void*,union tcp_log_stackspecific*,int,int *) ;
 scalar_t__ TCP_LOG_STATE_OFF ;
 int bbr_fill_in_logging_data (struct tcp_bbr*,TYPE_4__*,void*) ;

__attribute__((used)) static void
bbr_log_type_just_return(struct tcp_bbr *bbr, uint32_t cts, uint32_t tlen, uint8_t hpts_calling,
    uint8_t reason, uint32_t p_maxseg, int len)
{
 if (bbr->rc_tp->t_logstate != TCP_LOG_STATE_OFF) {
  union tcp_log_stackspecific log;

  bbr_fill_in_logging_data(bbr, &log.u_bbr, cts);
  log.u_bbr.flex1 = p_maxseg;
  log.u_bbr.flex2 = bbr->r_ctl.rc_hpts_flags;
  log.u_bbr.flex3 = bbr->r_ctl.rc_timer_exp;
  log.u_bbr.flex4 = reason;
  log.u_bbr.flex5 = bbr->rc_in_persist;
  log.u_bbr.flex6 = bbr->r_ctl.rc_last_delay_val;
  log.u_bbr.flex7 = p_maxseg;
  log.u_bbr.flex8 = bbr->rc_in_persist;
  log.u_bbr.pkts_out = 0;
  log.u_bbr.applimited = len;
  TCP_LOG_EVENTP(bbr->rc_tp, ((void*)0),
      &bbr->rc_inp->inp_socket->so_rcv,
      &bbr->rc_inp->inp_socket->so_snd,
      BBR_LOG_JUSTRET, 0,
      tlen, &log, 0, &bbr->rc_tv);
 }
}
