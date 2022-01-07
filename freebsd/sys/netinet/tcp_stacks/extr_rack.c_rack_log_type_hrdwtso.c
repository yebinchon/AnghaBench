
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flex4; int flex7; int flex8; int inflight; void* timeStamp; int flex6; int flex5; int flex3; int flex1; } ;
union tcp_log_stackspecific {TYPE_1__ u_bbr; } ;
typedef void* uint32_t ;
struct timeval {int dummy; } ;
struct tcpcb {scalar_t__ t_logstate; TYPE_4__* t_inpcb; } ;
struct TYPE_6__ {int rc_sacked; int rc_pace_max_segs; int rc_pace_min_segs; } ;
struct tcp_rack {TYPE_2__ r_ctl; int rc_tp; } ;
typedef int log ;
typedef int int32_t ;
struct TYPE_8__ {TYPE_3__* inp_socket; } ;
struct TYPE_7__ {int so_snd; int so_rcv; } ;


 int TCP_HDWR_TLS ;
 int TCP_LOG_EVENTP (struct tcpcb*,int *,int *,int *,int ,int ,int ,union tcp_log_stackspecific*,int,struct timeval*) ;
 scalar_t__ TCP_LOG_STATE_OFF ;
 int ctf_flight_size (int ,int ) ;
 int memset (union tcp_log_stackspecific*,int ,int) ;
 void* tcp_get_usecs (struct timeval*) ;

__attribute__((used)) static void
rack_log_type_hrdwtso(struct tcpcb *tp, struct tcp_rack *rack, int len, int mod, int32_t orig_len, int frm)
{
 if (tp->t_logstate != TCP_LOG_STATE_OFF) {
  union tcp_log_stackspecific log;
  struct timeval tv;
  uint32_t cts;

  memset(&log, 0, sizeof(log));
  cts = tcp_get_usecs(&tv);
  log.u_bbr.flex1 = rack->r_ctl.rc_pace_min_segs;
  log.u_bbr.flex3 = rack->r_ctl.rc_pace_max_segs;
  log.u_bbr.flex4 = len;
  log.u_bbr.flex5 = orig_len;
  log.u_bbr.flex6 = rack->r_ctl.rc_sacked;
  log.u_bbr.flex7 = mod;
  log.u_bbr.flex8 = frm;
  log.u_bbr.timeStamp = tcp_get_usecs(&tv);
  log.u_bbr.inflight = ctf_flight_size(rack->rc_tp, rack->r_ctl.rc_sacked);
  TCP_LOG_EVENTP(tp, ((void*)0),
      &tp->t_inpcb->inp_socket->so_rcv,
      &tp->t_inpcb->inp_socket->so_snd,
      TCP_HDWR_TLS, 0,
      0, &log, 0, &tv);
 }
}
