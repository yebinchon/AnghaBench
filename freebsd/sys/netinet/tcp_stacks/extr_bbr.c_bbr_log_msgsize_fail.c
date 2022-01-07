
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {void* flex4; void* flex3; void* flex2; void* flex1; } ;
union tcp_log_stackspecific {TYPE_3__ u_bbr; } ;
typedef void* uint32_t ;
struct tcpcb {scalar_t__ t_logstate; } ;
struct tcp_bbr {int rc_tv; TYPE_2__* rc_inp; } ;
typedef void* int32_t ;
struct TYPE_5__ {TYPE_1__* inp_socket; } ;
struct TYPE_4__ {int so_snd; int so_rcv; } ;


 int BBR_LOG_MSGSIZE ;
 int TCP_LOG_EVENTP (struct tcpcb*,int *,int *,int *,int ,int ,int ,union tcp_log_stackspecific*,int,int *) ;
 scalar_t__ TCP_LOG_STATE_OFF ;
 int bbr_fill_in_logging_data (struct tcp_bbr*,TYPE_3__*,void*) ;

__attribute__((used)) static void
bbr_log_msgsize_fail(struct tcp_bbr *bbr, struct tcpcb *tp, uint32_t len, uint32_t maxseg, uint32_t mtu, int32_t csum_flags, int32_t tso, uint32_t cts)
{
 if (tp->t_logstate != TCP_LOG_STATE_OFF) {
  union tcp_log_stackspecific log;

  bbr_fill_in_logging_data(bbr, &log.u_bbr, cts);
  log.u_bbr.flex1 = tso;
  log.u_bbr.flex2 = maxseg;
  log.u_bbr.flex3 = mtu;
  log.u_bbr.flex4 = csum_flags;
  TCP_LOG_EVENTP(tp, ((void*)0),
      &bbr->rc_inp->inp_socket->so_rcv,
      &bbr->rc_inp->inp_socket->so_snd,
      BBR_LOG_MSGSIZE, 0,
      0, &log, 0, &bbr->rc_tv);
 }
}
