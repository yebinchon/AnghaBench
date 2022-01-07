
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int flex8; int inflight; int timeStamp; int ininput; int inhpts; int flex6; int flex5; int flex4; int flex3; void* flex2; void* flex1; } ;
union tcp_log_stackspecific {TYPE_4__ u_bbr; } ;
typedef void* uint32_t ;
struct timeval {int dummy; } ;
struct TYPE_7__ {int rc_sacked; } ;
struct tcp_rack {TYPE_3__* rc_inp; TYPE_5__* rc_tp; TYPE_1__ r_ctl; } ;
struct rack_sendmap {int r_end; int r_start; int r_dupack; int r_flags; } ;
struct TYPE_11__ {scalar_t__ t_logstate; } ;
struct TYPE_9__ {TYPE_2__* inp_socket; int inp_in_input; int inp_in_hpts; } ;
struct TYPE_8__ {int so_snd; int so_rcv; } ;


 int BBR_LOG_SETTINGS_CHG ;
 int TCP_LOG_EVENTP (TYPE_5__*,int *,int *,int *,int ,int ,int ,union tcp_log_stackspecific*,int,struct timeval*) ;
 scalar_t__ TCP_LOG_STATE_OFF ;
 int ctf_flight_size (TYPE_5__*,int ) ;
 int memset (TYPE_4__*,int ,int) ;
 int tcp_get_usecs (struct timeval*) ;

__attribute__((used)) static void
rack_log_retran_reason(struct tcp_rack *rack, struct rack_sendmap *rsm, uint32_t tsused, uint32_t thresh, int mod)
{
 if (rack->rc_tp->t_logstate != TCP_LOG_STATE_OFF) {
  union tcp_log_stackspecific log;
  struct timeval tv;
  memset(&log.u_bbr, 0, sizeof(log.u_bbr));
  log.u_bbr.flex1 = tsused;
  log.u_bbr.flex2 = thresh;
  log.u_bbr.flex3 = rsm->r_flags;
  log.u_bbr.flex4 = rsm->r_dupack;
  log.u_bbr.flex5 = rsm->r_start;
  log.u_bbr.flex6 = rsm->r_end;
  log.u_bbr.flex8 = mod;
  log.u_bbr.inhpts = rack->rc_inp->inp_in_hpts;
  log.u_bbr.ininput = rack->rc_inp->inp_in_input;
  log.u_bbr.timeStamp = tcp_get_usecs(&tv);
  log.u_bbr.inflight = ctf_flight_size(rack->rc_tp, rack->r_ctl.rc_sacked);
  TCP_LOG_EVENTP(rack->rc_tp, ((void*)0),
      &rack->rc_inp->inp_socket->so_rcv,
      &rack->rc_inp->inp_socket->so_snd,
      BBR_LOG_SETTINGS_CHG, 0,
      0, &log, 0, &tv);
 }
}
