
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int flex8; int flex6; void* flex5; void* flex4; int flex3; scalar_t__ flex2; int flex1; } ;
union tcp_log_stackspecific {TYPE_4__ u_bbr; } ;
typedef int uint64_t ;
typedef void* uint32_t ;
struct TYPE_6__ {scalar_t__ rc_resend; int rc_hpts_flags; } ;
struct tcp_bbr {int rc_tv; TYPE_3__* rc_inp; TYPE_5__* rc_tp; TYPE_1__ r_ctl; int bbr_timer_src; } ;
typedef int int32_t ;
struct TYPE_10__ {scalar_t__ t_logstate; int t_rxtcur; } ;
struct TYPE_8__ {TYPE_2__* inp_socket; } ;
struct TYPE_7__ {int so_snd; int so_rcv; } ;


 int BBR_LOG_RTO ;
 int TCP_LOG_EVENTP (TYPE_5__*,int *,int *,int *,int ,int ,int ,union tcp_log_stackspecific*,int,int *) ;
 scalar_t__ TCP_LOG_STATE_OFF ;
 int TICKS_2_USEC (int ) ;
 int bbr_fill_in_logging_data (struct tcp_bbr*,TYPE_4__*,void*) ;

__attribute__((used)) static void
bbr_log_to_event(struct tcp_bbr *bbr, uint32_t cts, int32_t to_num)
{
 if (bbr->rc_tp->t_logstate != TCP_LOG_STATE_OFF) {
  union tcp_log_stackspecific log;
  uint64_t ar;

  bbr_fill_in_logging_data(bbr, &log.u_bbr, cts);
  log.u_bbr.flex1 = bbr->bbr_timer_src;
  log.u_bbr.flex2 = 0;
  log.u_bbr.flex3 = bbr->r_ctl.rc_hpts_flags;
  ar = (uint64_t)(bbr->r_ctl.rc_resend);
  ar >>= 32;
  ar &= 0x00000000ffffffff;
  log.u_bbr.flex4 = (uint32_t)ar;
  ar = (uint64_t)bbr->r_ctl.rc_resend;
  ar &= 0x00000000ffffffff;
  log.u_bbr.flex5 = (uint32_t)ar;
  log.u_bbr.flex6 = TICKS_2_USEC(bbr->rc_tp->t_rxtcur);
  log.u_bbr.flex8 = to_num;
  TCP_LOG_EVENTP(bbr->rc_tp, ((void*)0),
      &bbr->rc_inp->inp_socket->so_rcv,
      &bbr->rc_inp->inp_socket->so_snd,
      BBR_LOG_RTO, 0,
      0, &log, 0, &bbr->rc_tv);
 }
}
