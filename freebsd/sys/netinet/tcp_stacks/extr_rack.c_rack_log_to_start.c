
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int inflight; int timeStamp; int ininput; int inhpts; int pkts_out; int flex8; int flex7; int flex6; int flex5; int flex4; int flex3; int flex2; int flex1; } ;
union tcp_log_stackspecific {TYPE_4__ u_bbr; } ;
typedef int uint8_t ;
typedef int uint32_t ;
struct timeval {int dummy; } ;
struct TYPE_7__ {int rc_sacked; int rc_prr_sndcnt; int rc_hpts_flags; } ;
struct tcp_rack {TYPE_3__* rc_inp; TYPE_5__* rc_tp; TYPE_1__ r_ctl; int rc_in_persist; } ;
typedef int int32_t ;
struct TYPE_11__ {scalar_t__ t_logstate; int t_srtt; int t_rxtcur; } ;
struct TYPE_9__ {TYPE_2__* inp_socket; int inp_in_input; int inp_in_hpts; int inp_hptsslot; } ;
struct TYPE_8__ {int so_snd; int so_rcv; } ;


 int BBR_LOG_TIMERSTAR ;
 int TCP_LOG_EVENTP (TYPE_5__*,int *,int *,int *,int ,int ,int ,union tcp_log_stackspecific*,int,struct timeval*) ;
 scalar_t__ TCP_LOG_STATE_OFF ;
 int TCP_RTT_SHIFT ;
 int TICKS_2_MSEC (int) ;
 int ctf_flight_size (TYPE_5__*,int ) ;
 int memset (TYPE_4__*,int ,int) ;
 int tcp_get_usecs (struct timeval*) ;

__attribute__((used)) static void
rack_log_to_start(struct tcp_rack *rack, uint32_t cts, uint32_t to, int32_t slot, uint8_t which)
{
 if (rack->rc_tp->t_logstate != TCP_LOG_STATE_OFF) {
  union tcp_log_stackspecific log;
  struct timeval tv;

  memset(&log.u_bbr, 0, sizeof(log.u_bbr));
  log.u_bbr.flex1 = TICKS_2_MSEC(rack->rc_tp->t_srtt >> TCP_RTT_SHIFT);
  log.u_bbr.flex2 = to;
  log.u_bbr.flex3 = rack->r_ctl.rc_hpts_flags;
  log.u_bbr.flex4 = slot;
  log.u_bbr.flex5 = rack->rc_inp->inp_hptsslot;
  log.u_bbr.flex6 = rack->rc_tp->t_rxtcur;
  log.u_bbr.flex7 = rack->rc_in_persist;
  log.u_bbr.flex8 = which;
  log.u_bbr.pkts_out = rack->r_ctl.rc_prr_sndcnt;
  log.u_bbr.inhpts = rack->rc_inp->inp_in_hpts;
  log.u_bbr.ininput = rack->rc_inp->inp_in_input;
  log.u_bbr.timeStamp = tcp_get_usecs(&tv);
  log.u_bbr.inflight = ctf_flight_size(rack->rc_tp, rack->r_ctl.rc_sacked);
  TCP_LOG_EVENTP(rack->rc_tp, ((void*)0),
      &rack->rc_inp->inp_socket->so_rcv,
      &rack->rc_inp->inp_socket->so_snd,
      BBR_LOG_TIMERSTAR, 0,
      0, &log, 0, &tv);
 }
}
