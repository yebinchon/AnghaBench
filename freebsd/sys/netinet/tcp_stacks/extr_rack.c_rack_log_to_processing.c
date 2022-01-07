
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int inflight; int timeStamp; int flex6; int flex5; int flex4; int flex3; void* flex2; void* flex1; } ;
union tcp_log_stackspecific {TYPE_4__ u_bbr; } ;
typedef int uint32_t ;
struct timeval {int dummy; } ;
struct TYPE_7__ {int rc_sacked; int rc_prr_sndcnt; int rc_hpts_flags; int rc_timer_exp; } ;
struct tcp_rack {TYPE_3__* rc_inp; TYPE_5__* rc_tp; TYPE_1__ r_ctl; } ;
typedef void* int32_t ;
struct TYPE_11__ {scalar_t__ t_logstate; } ;
struct TYPE_9__ {TYPE_2__* inp_socket; } ;
struct TYPE_8__ {int so_snd; int so_rcv; } ;


 int BBR_LOG_TO_PROCESS ;
 int TCP_LOG_EVENTP (TYPE_5__*,int *,int *,int *,int ,int ,int ,union tcp_log_stackspecific*,int,struct timeval*) ;
 scalar_t__ TCP_LOG_STATE_OFF ;
 int ctf_flight_size (TYPE_5__*,int ) ;
 int memset (TYPE_4__*,int ,int) ;
 int tcp_get_usecs (struct timeval*) ;

__attribute__((used)) static void
rack_log_to_processing(struct tcp_rack *rack, uint32_t cts, int32_t ret, int32_t timers)
{
 if (rack->rc_tp->t_logstate != TCP_LOG_STATE_OFF) {
  union tcp_log_stackspecific log;
  struct timeval tv;

  memset(&log.u_bbr, 0, sizeof(log.u_bbr));
  log.u_bbr.flex1 = timers;
  log.u_bbr.flex2 = ret;
  log.u_bbr.flex3 = rack->r_ctl.rc_timer_exp;
  log.u_bbr.flex4 = rack->r_ctl.rc_hpts_flags;
  log.u_bbr.flex5 = cts;
  log.u_bbr.flex6 = rack->r_ctl.rc_prr_sndcnt;
  log.u_bbr.timeStamp = tcp_get_usecs(&tv);
  log.u_bbr.inflight = ctf_flight_size(rack->rc_tp, rack->r_ctl.rc_sacked);
  TCP_LOG_EVENTP(rack->rc_tp, ((void*)0),
      &rack->rc_inp->inp_socket->so_rcv,
      &rack->rc_inp->inp_socket->so_snd,
      BBR_LOG_TO_PROCESS, 0,
      0, &log, 0, &tv);
 }
}
