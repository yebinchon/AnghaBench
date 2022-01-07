
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int flex8; int flex7; void* flex6; int flex5; int flex4; int flex3; void* flex2; void* flex1; } ;
union tcp_log_stackspecific {TYPE_4__ u_bbr; } ;
typedef int uint8_t ;
typedef void* uint32_t ;
struct TYPE_6__ {int rc_reorder_shift; int rc_reorder_ts; } ;
struct tcp_bbr {int rc_tv; TYPE_3__* rc_inp; TYPE_5__* rc_tp; TYPE_1__ r_ctl; } ;
struct bbr_sendmap {int r_rtr_cnt; int * r_tim_lastsent; } ;
struct TYPE_10__ {scalar_t__ t_logstate; int t_rxtcur; } ;
struct TYPE_8__ {TYPE_2__* inp_socket; } ;
struct TYPE_7__ {int so_snd; int so_rcv; } ;


 int BBR_LOG_THRESH_CALC ;
 int TCP_LOG_EVENTP (TYPE_5__*,int *,int *,int *,int ,int ,int ,union tcp_log_stackspecific*,int,int *) ;
 scalar_t__ TCP_LOG_STATE_OFF ;
 int TICKS_2_USEC (int ) ;
 int bbr_fill_in_logging_data (struct tcp_bbr*,TYPE_4__*,void*) ;
 scalar_t__ bbr_verbose_logging ;

__attribute__((used)) static void
bbr_log_thresh_choice(struct tcp_bbr *bbr, uint32_t cts, uint32_t thresh, uint32_t lro, uint32_t srtt, struct bbr_sendmap *rsm, uint8_t frm)
{
 if (bbr_verbose_logging && (bbr->rc_tp->t_logstate != TCP_LOG_STATE_OFF)) {
  union tcp_log_stackspecific log;

  bbr_fill_in_logging_data(bbr, &log.u_bbr, cts);
  log.u_bbr.flex1 = thresh;
  log.u_bbr.flex2 = lro;
  log.u_bbr.flex3 = bbr->r_ctl.rc_reorder_ts;
  log.u_bbr.flex4 = rsm->r_tim_lastsent[(rsm->r_rtr_cnt - 1)];
  log.u_bbr.flex5 = TICKS_2_USEC(bbr->rc_tp->t_rxtcur);
  log.u_bbr.flex6 = srtt;
  log.u_bbr.flex7 = bbr->r_ctl.rc_reorder_shift;
  log.u_bbr.flex8 = frm;
  TCP_LOG_EVENTP(bbr->rc_tp, ((void*)0),
      &bbr->rc_inp->inp_socket->so_rcv,
      &bbr->rc_inp->inp_socket->so_snd,
      BBR_LOG_THRESH_CALC, 0,
      0, &log, 0, &bbr->rc_tv);
 }
}
