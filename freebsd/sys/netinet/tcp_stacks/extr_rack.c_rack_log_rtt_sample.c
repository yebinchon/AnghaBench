
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flex1; int inflight; int timeStamp; int flex8; int flex5; int flex4; int flex3; int flex2; } ;
union tcp_log_stackspecific {TYPE_1__ u_bbr; } ;
typedef int uint32_t ;
struct timeval {int dummy; } ;
struct TYPE_8__ {int rc_sacked; int sack_moved_extra; int sack_noextra_move; int sack_count; int ack_count; } ;
struct tcp_rack {TYPE_4__* rc_inp; TYPE_5__* rc_tp; TYPE_2__ r_ctl; int sack_attack_disable; } ;
typedef int log ;
struct TYPE_11__ {scalar_t__ t_logstate; } ;
struct TYPE_10__ {TYPE_3__* inp_socket; } ;
struct TYPE_9__ {int so_snd; int so_rcv; } ;


 int TCP_LOG_EVENTP (TYPE_5__*,int *,int *,int *,int ,int ,int ,union tcp_log_stackspecific*,int,struct timeval*) ;
 int TCP_LOG_RTT ;
 scalar_t__ TCP_LOG_STATE_OFF ;
 int ctf_flight_size (TYPE_5__*,int ) ;
 int memset (union tcp_log_stackspecific*,int ,int) ;
 int tcp_get_usecs (struct timeval*) ;

__attribute__((used)) static void
rack_log_rtt_sample(struct tcp_rack *rack, uint32_t rtt)
{





 if (rack->rc_tp->t_logstate != TCP_LOG_STATE_OFF) {
  union tcp_log_stackspecific log;
  struct timeval tv;


  memset(&log, 0, sizeof(log));
  log.u_bbr.flex1 = rtt * 1000;
  log.u_bbr.flex2 = rack->r_ctl.ack_count;
  log.u_bbr.flex3 = rack->r_ctl.sack_count;
  log.u_bbr.flex4 = rack->r_ctl.sack_noextra_move;
  log.u_bbr.flex5 = rack->r_ctl.sack_moved_extra;
  log.u_bbr.flex8 = rack->sack_attack_disable;
  log.u_bbr.timeStamp = tcp_get_usecs(&tv);
  log.u_bbr.inflight = ctf_flight_size(rack->rc_tp, rack->r_ctl.rc_sacked);
  TCP_LOG_EVENTP(rack->rc_tp, ((void*)0),
      &rack->rc_inp->inp_socket->so_rcv,
      &rack->rc_inp->inp_socket->so_snd,
      TCP_LOG_RTT, 0,
      0, &log, 0, &tv);
 }
}
