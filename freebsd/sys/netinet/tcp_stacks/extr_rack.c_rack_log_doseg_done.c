
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flex3; int inflight; int timeStamp; int flex8; int flex7; int applimited; int flex5; int flex4; void* flex2; void* flex1; } ;
union tcp_log_stackspecific {TYPE_1__ u_bbr; } ;
typedef int uint32_t ;
struct timeval {int dummy; } ;
struct TYPE_8__ {int rc_sacked; int rc_pace_min_segs; int rc_prr_sndcnt; int rc_hpts_flags; } ;
struct tcp_rack {TYPE_4__* rc_inp; TYPE_5__* rc_tp; TYPE_2__ r_ctl; int rc_in_persist; int r_wanted_output; } ;
typedef int log ;
typedef void* int32_t ;
struct TYPE_11__ {scalar_t__ t_logstate; } ;
struct TYPE_10__ {TYPE_3__* inp_socket; } ;
struct TYPE_9__ {int so_snd; int so_rcv; } ;


 int BBR_LOG_DOSEG_DONE ;
 int TCP_LOG_EVENTP (TYPE_5__*,int *,int *,int *,int ,int ,int ,union tcp_log_stackspecific*,int,struct timeval*) ;
 scalar_t__ TCP_LOG_STATE_OFF ;
 int ctf_flight_size (TYPE_5__*,int ) ;
 int memset (union tcp_log_stackspecific*,int ,int) ;
 int tcp_get_usecs (struct timeval*) ;

__attribute__((used)) static void
rack_log_doseg_done(struct tcp_rack *rack, uint32_t cts, int32_t nxt_pkt, int32_t did_out, int way_out)
{
 if (rack->rc_tp->t_logstate != TCP_LOG_STATE_OFF) {
  union tcp_log_stackspecific log;
  struct timeval tv;

  memset(&log, 0, sizeof(log));
  log.u_bbr.flex1 = did_out;
  log.u_bbr.flex2 = nxt_pkt;
  log.u_bbr.flex3 = way_out;
  log.u_bbr.flex4 = rack->r_ctl.rc_hpts_flags;
  log.u_bbr.flex5 = rack->r_ctl.rc_prr_sndcnt;
  log.u_bbr.applimited = rack->r_ctl.rc_pace_min_segs;
  log.u_bbr.flex7 = rack->r_wanted_output;
  log.u_bbr.flex8 = rack->rc_in_persist;
  log.u_bbr.timeStamp = tcp_get_usecs(&tv);
  log.u_bbr.inflight = ctf_flight_size(rack->rc_tp, rack->r_ctl.rc_sacked);
  TCP_LOG_EVENTP(rack->rc_tp, ((void*)0),
      &rack->rc_inp->inp_socket->so_rcv,
      &rack->rc_inp->inp_socket->so_snd,
      BBR_LOG_DOSEG_DONE, 0,
      0, &log, 0, &tv);
 }
}
