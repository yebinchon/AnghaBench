
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union tcp_log_stackspecific {int u_bbr; } ;
struct timeval {int dummy; } ;
struct tcp_bbr {TYPE_3__* rc_tp; TYPE_2__* rc_inp; } ;
struct sockbuf {int dummy; } ;
struct TYPE_6__ {scalar_t__ t_logstate; } ;
struct TYPE_5__ {TYPE_1__* inp_socket; } ;
struct TYPE_4__ {struct sockbuf so_snd; struct sockbuf so_rcv; } ;


 int TCP_LOG_EVENTP (TYPE_3__*,int *,struct sockbuf*,struct sockbuf*,int ,int ,int ,union tcp_log_stackspecific*,int,struct timeval*) ;
 int TCP_LOG_FLOWEND ;
 scalar_t__ TCP_LOG_STATE_OFF ;
 int bbr_fill_in_logging_data (struct tcp_bbr*,int *,int ) ;
 int tcp_get_usecs (struct timeval*) ;

__attribute__((used)) static void
bbr_log_flowend(struct tcp_bbr *bbr)
{
 if (bbr->rc_tp->t_logstate != TCP_LOG_STATE_OFF) {
  union tcp_log_stackspecific log;
  struct sockbuf *r, *s;
  struct timeval tv;

  if (bbr->rc_inp->inp_socket) {
   r = &bbr->rc_inp->inp_socket->so_rcv;
   s = &bbr->rc_inp->inp_socket->so_snd;
  } else {
   r = s = ((void*)0);
  }
  bbr_fill_in_logging_data(bbr, &log.u_bbr, tcp_get_usecs(&tv));
  TCP_LOG_EVENTP(bbr->rc_tp, ((void*)0),
      r, s,
      TCP_LOG_FLOWEND, 0,
      0, &log, 0, &tv);
 }
}
