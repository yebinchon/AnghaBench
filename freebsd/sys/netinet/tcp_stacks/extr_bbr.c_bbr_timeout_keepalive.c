
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct tcptemp {int tt_t; int tt_ipgen; } ;
struct tcpcb {scalar_t__ t_state; scalar_t__ t_rcvtime; scalar_t__ snd_una; int rcv_nxt; struct inpcb* t_inpcb; } ;
struct TYPE_3__ {int rc_hpts_flags; } ;
struct tcp_bbr {int rc_inp; TYPE_1__ r_ctl; scalar_t__ rc_all_timers_stopped; } ;
struct mbuf {int dummy; } ;
struct inpcb {TYPE_2__* inp_socket; } ;
struct TYPE_4__ {int so_options; } ;


 int BBR_TO_FRM_KEEP ;
 int ETIMEDOUT ;
 int M_TEMP ;
 int PACE_TMR_KEEP ;
 int SO_KEEPALIVE ;
 int TCPSTAT_INC (int ) ;
 scalar_t__ TCPS_CLOSING ;
 scalar_t__ TCPS_ESTABLISHED ;
 scalar_t__ TP_KEEPIDLE (struct tcpcb*) ;
 scalar_t__ TP_MAXIDLE (struct tcpcb*) ;
 int bbr_log_to_event (struct tcp_bbr*,int ,int ) ;
 int bbr_start_hpts_timer (struct tcp_bbr*,struct tcpcb*,int ,int,int ,int ) ;
 int free (struct tcptemp*,int ) ;
 scalar_t__ tcp_always_keepalive ;
 int tcp_respond (struct tcpcb*,int ,int *,struct mbuf*,int ,scalar_t__,int ) ;
 int tcp_set_inp_to_drop (int ,int ) ;
 struct tcptemp* tcpip_maketemplate (struct inpcb*) ;
 int tcps_keepdrops ;
 int tcps_keepprobe ;
 int tcps_keeptimeo ;
 scalar_t__ ticks ;

__attribute__((used)) static int
bbr_timeout_keepalive(struct tcpcb *tp, struct tcp_bbr *bbr, uint32_t cts)
{
 struct tcptemp *t_template;
 struct inpcb *inp;

 if (bbr->rc_all_timers_stopped) {
  return (1);
 }
 bbr->r_ctl.rc_hpts_flags &= ~PACE_TMR_KEEP;
 inp = tp->t_inpcb;
 bbr_log_to_event(bbr, cts, BBR_TO_FRM_KEEP);




 TCPSTAT_INC(tcps_keeptimeo);
 if (tp->t_state < TCPS_ESTABLISHED)
  goto dropit;
 if ((tcp_always_keepalive || inp->inp_socket->so_options & SO_KEEPALIVE) &&
     tp->t_state <= TCPS_CLOSING) {
  if (ticks - tp->t_rcvtime >= TP_KEEPIDLE(tp) + TP_MAXIDLE(tp))
   goto dropit;
  TCPSTAT_INC(tcps_keepprobe);
  t_template = tcpip_maketemplate(inp);
  if (t_template) {
   tcp_respond(tp, t_template->tt_ipgen,
       &t_template->tt_t, (struct mbuf *)((void*)0),
       tp->rcv_nxt, tp->snd_una - 1, 0);
   free(t_template, M_TEMP);
  }
 }
 bbr_start_hpts_timer(bbr, tp, cts, 4, 0, 0);
 return (1);
dropit:
 TCPSTAT_INC(tcps_keepdrops);
 tcp_set_inp_to_drop(bbr->rc_inp, ETIMEDOUT);
 return (1);
}
