
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {void* applimited; int flex8; int flex7; int flex6; int flex5; int flex4; int flex3; int flex2; void* flex1; } ;
union tcp_log_stackspecific {TYPE_3__ u_bbr; } ;
typedef void* uint32_t ;
struct tcp_bbr {int rc_tv; TYPE_2__* rc_inp; TYPE_4__* rc_tp; } ;
struct bbr_sendmap {int r_flags; int * r_tim_lastsent; int r_dupack; int r_rtr_cnt; int r_delivered; int r_end; int r_start; } ;
struct TYPE_8__ {scalar_t__ t_logstate; } ;
struct TYPE_6__ {TYPE_1__* inp_socket; } ;
struct TYPE_5__ {int so_snd; int so_rcv; } ;


 int BBR_RSM_CLEARED ;
 int TCP_LOG_EVENTP (TYPE_4__*,int *,int *,int *,int ,int ,int ,union tcp_log_stackspecific*,int,int *) ;
 scalar_t__ TCP_LOG_STATE_OFF ;
 int bbr_fill_in_logging_data (struct tcp_bbr*,TYPE_3__*,void*) ;

__attribute__((used)) static void
bbr_log_type_rsmclear(struct tcp_bbr *bbr, uint32_t cts, struct bbr_sendmap *rsm,
        uint32_t flags, uint32_t line)
{
 if (bbr->rc_tp->t_logstate != TCP_LOG_STATE_OFF) {
  union tcp_log_stackspecific log;

  bbr_fill_in_logging_data(bbr, &log.u_bbr, cts);
  log.u_bbr.flex1 = line;
  log.u_bbr.flex2 = rsm->r_start;
  log.u_bbr.flex3 = rsm->r_end;
  log.u_bbr.flex4 = rsm->r_delivered;
  log.u_bbr.flex5 = rsm->r_rtr_cnt;
  log.u_bbr.flex6 = rsm->r_dupack;
  log.u_bbr.flex7 = rsm->r_tim_lastsent[0];
  log.u_bbr.flex8 = rsm->r_flags;

  log.u_bbr.applimited = flags;
  TCP_LOG_EVENTP(bbr->rc_tp, ((void*)0),
      &bbr->rc_inp->inp_socket->so_rcv,
      &bbr->rc_inp->inp_socket->so_snd,
      BBR_RSM_CLEARED, 0,
      0, &log, 0, &bbr->rc_tv);
 }
}
