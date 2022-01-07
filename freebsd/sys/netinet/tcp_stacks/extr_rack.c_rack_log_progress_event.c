
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int flex1; int flex8; int inflight; int timeStamp; int flex4; int flex3; int flex2; int ininput; int inhpts; } ;
union tcp_log_stackspecific {TYPE_4__ u_bbr; } ;
typedef int uint32_t ;
struct timeval {int dummy; } ;
struct tcpcb {scalar_t__ t_logstate; int t_acktime; int t_maxunacktime; } ;
struct TYPE_5__ {int rc_sacked; } ;
struct tcp_rack {TYPE_3__* rc_inp; TYPE_1__ r_ctl; int rc_tp; } ;
struct TYPE_7__ {TYPE_2__* inp_socket; int inp_in_input; int inp_in_hpts; } ;
struct TYPE_6__ {int so_snd; int so_rcv; } ;


 int BBR_LOG_PROGRESS ;
 int TCP_LOG_EVENTP (struct tcpcb*,int *,int *,int *,int ,int ,int ,union tcp_log_stackspecific*,int,struct timeval*) ;
 scalar_t__ TCP_LOG_STATE_OFF ;
 int ctf_flight_size (int ,int ) ;
 int memset (TYPE_4__*,int ,int) ;
 scalar_t__ rack_verbose_logging ;
 int tcp_get_usecs (struct timeval*) ;

__attribute__((used)) static inline void
rack_log_progress_event(struct tcp_rack *rack, struct tcpcb *tp, uint32_t tick, int event, int line)
{
 if (rack_verbose_logging && (tp->t_logstate != TCP_LOG_STATE_OFF)) {
  union tcp_log_stackspecific log;
  struct timeval tv;

  memset(&log.u_bbr, 0, sizeof(log.u_bbr));
  log.u_bbr.inhpts = rack->rc_inp->inp_in_hpts;
  log.u_bbr.ininput = rack->rc_inp->inp_in_input;
  log.u_bbr.flex1 = line;
  log.u_bbr.flex2 = tick;
  log.u_bbr.flex3 = tp->t_maxunacktime;
  log.u_bbr.flex4 = tp->t_acktime;
  log.u_bbr.flex8 = event;
  log.u_bbr.timeStamp = tcp_get_usecs(&tv);
  log.u_bbr.inflight = ctf_flight_size(rack->rc_tp, rack->r_ctl.rc_sacked);
  TCP_LOG_EVENTP(tp, ((void*)0),
      &rack->rc_inp->inp_socket->so_rcv,
      &rack->rc_inp->inp_socket->so_snd,
      BBR_LOG_PROGRESS, 0,
      0, &log, 0, &tv);
 }
}
