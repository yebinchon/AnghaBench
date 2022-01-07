
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flex8; int pkts_out; int applimited; int flex6; int flex5; int flex4; int flex3; int flex2; int flex1; int timeStamp; } ;
union tcp_log_stackspecific {TYPE_1__ u_bbr; } ;
struct timeval {int dummy; } ;
struct tcpcb {scalar_t__ t_logstate; TYPE_3__* t_inpcb; } ;
struct sackblk {int end; int start; } ;
typedef int log ;
struct TYPE_6__ {TYPE_2__* inp_socket; } ;
struct TYPE_5__ {int so_snd; int so_rcv; } ;


 int TCP_LOG_EVENTP (struct tcpcb*,int *,int *,int *,int ,int ,int ,union tcp_log_stackspecific*,int,struct timeval*) ;
 scalar_t__ TCP_LOG_STATE_OFF ;
 int TCP_SACK_FILTER_RES ;
 int memset (union tcp_log_stackspecific*,int ,int) ;
 int tcp_get_usecs (struct timeval*) ;

void
ctf_log_sack_filter(struct tcpcb *tp, int num_sack_blks, struct sackblk *sack_blocks)
{
 if (tp->t_logstate != TCP_LOG_STATE_OFF) {
  union tcp_log_stackspecific log;
  struct timeval tv;

  memset(&log, 0, sizeof(log));
  log.u_bbr.timeStamp = tcp_get_usecs(&tv);
  log.u_bbr.flex8 = num_sack_blks;
  if (num_sack_blks > 0) {
   log.u_bbr.flex1 = sack_blocks[0].start;
   log.u_bbr.flex2 = sack_blocks[0].end;
  }
  if (num_sack_blks > 1) {
   log.u_bbr.flex3 = sack_blocks[1].start;
   log.u_bbr.flex4 = sack_blocks[1].end;
  }
  if (num_sack_blks > 2) {
   log.u_bbr.flex5 = sack_blocks[2].start;
   log.u_bbr.flex6 = sack_blocks[2].end;
  }
  if (num_sack_blks > 3) {
   log.u_bbr.applimited = sack_blocks[3].start;
   log.u_bbr.pkts_out = sack_blocks[3].end;
  }
  TCP_LOG_EVENTP(tp, ((void*)0),
      &tp->t_inpcb->inp_socket->so_rcv,
      &tp->t_inpcb->inp_socket->so_snd,
      TCP_SACK_FILTER_RES, 0,
      0, &log, 0, &tv);
 }
}
