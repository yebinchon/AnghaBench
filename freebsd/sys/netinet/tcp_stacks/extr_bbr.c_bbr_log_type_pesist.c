
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int flex8; int flex2; int flex1; } ;
union tcp_log_stackspecific {TYPE_3__ u_bbr; } ;
typedef int uint8_t ;
typedef int uint32_t ;
struct tcp_bbr {int rc_tv; TYPE_2__* rc_inp; TYPE_4__* rc_tp; } ;
typedef int int32_t ;
struct TYPE_8__ {scalar_t__ t_logstate; } ;
struct TYPE_6__ {TYPE_1__* inp_socket; } ;
struct TYPE_5__ {int so_snd; int so_rcv; } ;


 int BBR_LOG_PERSIST ;
 int TCP_LOG_EVENTP (TYPE_4__*,int *,int *,int *,int ,int ,int ,union tcp_log_stackspecific*,int,int *) ;
 scalar_t__ TCP_LOG_STATE_OFF ;
 int bbr_fill_in_logging_data (struct tcp_bbr*,TYPE_3__*,int ) ;
 scalar_t__ bbr_verbose_logging ;

__attribute__((used)) static void
bbr_log_type_pesist(struct tcp_bbr *bbr, uint32_t cts, uint32_t time_in, int32_t line, uint8_t enter_exit)
{
 if (bbr_verbose_logging && (bbr->rc_tp->t_logstate != TCP_LOG_STATE_OFF)) {
  union tcp_log_stackspecific log;

  bbr_fill_in_logging_data(bbr, &log.u_bbr, cts);
  log.u_bbr.flex1 = time_in;
  log.u_bbr.flex2 = line;
  log.u_bbr.flex8 = enter_exit;
  TCP_LOG_EVENTP(bbr->rc_tp, ((void*)0),
      &bbr->rc_inp->inp_socket->so_rcv,
      &bbr->rc_inp->inp_socket->so_snd,
      BBR_LOG_PERSIST, 0,
      0, &log, 0, &bbr->rc_tv);
 }
}
