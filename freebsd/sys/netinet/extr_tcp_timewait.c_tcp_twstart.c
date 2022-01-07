
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ u_short ;
struct tcptw {int rcv_nxt; int tw_cred; int tw_so_options; scalar_t__ tw_time; int t_starttime; int irs; int iss; int snd_nxt; scalar_t__ ts_offset; scalar_t__ t_recent; scalar_t__ last_win; struct inpcb* tw_inpcb; } ;
struct tcpcb {long rcv_scale; int t_maxseg; int rcv_adv; int rcv_nxt; int t_flags; int t_starttime; int irs; int iss; int snd_nxt; scalar_t__ ts_offset; scalar_t__ ts_recent; struct inpcb* t_inpcb; } ;
struct TYPE_4__ {int sb_hiwat; } ;
struct socket {int so_state; int so_cred; int so_options; TYPE_2__ so_rcv; } ;
struct TYPE_3__ {int inc_flags; } ;
struct inpcb {int inp_flags; struct tcptw* inp_ppcb; struct socket* inp_socket; int inp_faddr; int in6p_faddr; TYPE_1__ inp_inc; } ;


 int INC_ISIPV6 ;
 int INP_DROPPED ;
 int INP_SOCKREF ;
 int INP_TIMEWAIT ;
 int INP_WLOCK_ASSERT (struct inpcb*) ;
 int INP_WUNLOCK (struct inpcb*) ;
 int KASSERT (int,char*) ;
 int M_NOWAIT ;
 int NET_EPOCH_ASSERT () ;
 scalar_t__ SEQ_GT (int,int) ;
 int SOCK_LOCK (struct socket*) ;
 int SS_PROTOREF ;
 int TCPSTATES_INC (int ) ;
 int TCPS_TIME_WAIT ;
 scalar_t__ TCP_MAXWIN ;
 int TF_ACKNOW ;
 int TF_NOOPT ;
 int TF_RCVD_TSTMP ;
 int TF_REQ_TSTMP ;
 int TH_ACK ;
 scalar_t__ V_nolocaltimewait ;
 int V_tcptw_zone ;
 int crhold (int ) ;
 int in6_localaddr (int *) ;
 int in_localip (int ) ;
 int in_pcbdrop (struct inpcb*) ;
 int in_pcbref (struct inpcb*) ;
 int lmax (int ,int ) ;
 int lmin (int ,long) ;
 int sbspace (TYPE_2__*) ;
 int sofree (struct socket*) ;
 int soisdisconnected (struct socket*) ;
 struct tcpcb* tcp_close (struct tcpcb*) ;
 int tcp_discardcb (struct tcpcb*) ;
 int tcp_state_change (struct tcpcb*,int ) ;
 int tcp_tw_2msl_reset (struct tcptw*,int ) ;
 struct tcptw* tcp_tw_2msl_scan (int) ;
 int tcp_twrespond (struct tcptw*,int ) ;
 struct tcptw* uma_zalloc (int ,int ) ;

void
tcp_twstart(struct tcpcb *tp)
{
 struct tcptw twlocal, *tw;
 struct inpcb *inp = tp->t_inpcb;
 struct socket *so;
 uint32_t recwin;
 bool acknow, local;




 NET_EPOCH_ASSERT();
 INP_WLOCK_ASSERT(inp);


 KASSERT((inp->inp_flags & INP_DROPPED) == 0, ("tcp_twstart: "
     "(inp->inp_flags & INP_DROPPED) != 0"));

 if (V_nolocaltimewait) {
   local = 0;

 } else
  local = 0;





 tcp_state_change(tp, TCPS_TIME_WAIT);

 if (local)
  tw = &twlocal;
 else
  tw = uma_zalloc(V_tcptw_zone, M_NOWAIT);
 if (tw == ((void*)0)) {
  tw = tcp_tw_2msl_scan(1);
  if (tw == ((void*)0)) {
   tp = tcp_close(tp);
   if (tp != ((void*)0))
    INP_WUNLOCK(inp);
   return;
  }
 }




 tw->tw_inpcb = inp;




 so = inp->inp_socket;
 recwin = lmin(lmax(sbspace(&so->so_rcv), 0),
     (long)TCP_MAXWIN << tp->rcv_scale);
 if (recwin < (so->so_rcv.sb_hiwat / 4) &&
     recwin < tp->t_maxseg)
  recwin = 0;
 if (SEQ_GT(tp->rcv_adv, tp->rcv_nxt) &&
     recwin < (tp->rcv_adv - tp->rcv_nxt))
  recwin = (tp->rcv_adv - tp->rcv_nxt);
 tw->last_win = (u_short)(recwin >> tp->rcv_scale);




 if ((tp->t_flags & (TF_REQ_TSTMP|TF_RCVD_TSTMP|TF_NOOPT)) ==
     (TF_REQ_TSTMP|TF_RCVD_TSTMP)) {
  tw->t_recent = tp->ts_recent;
  tw->ts_offset = tp->ts_offset;
 } else {
  tw->t_recent = 0;
  tw->ts_offset = 0;
 }

 tw->snd_nxt = tp->snd_nxt;
 tw->rcv_nxt = tp->rcv_nxt;
 tw->iss = tp->iss;
 tw->irs = tp->irs;
 tw->t_starttime = tp->t_starttime;
 tw->tw_time = 0;






 acknow = tp->t_flags & TF_ACKNOW;
 tcp_discardcb(tp);
 soisdisconnected(so);
 tw->tw_so_options = so->so_options;
 inp->inp_flags |= INP_TIMEWAIT;
 if (acknow)
  tcp_twrespond(tw, TH_ACK);
 if (local)
  in_pcbdrop(inp);
 else {
  in_pcbref(inp);
  tw->tw_cred = crhold(so->so_cred);
  inp->inp_ppcb = tw;
  TCPSTATES_INC(TCPS_TIME_WAIT);
  tcp_tw_2msl_reset(tw, 0);
 }





 if (inp->inp_flags & INP_SOCKREF) {
  KASSERT(so->so_state & SS_PROTOREF,
      ("tcp_twstart: !SS_PROTOREF"));
  inp->inp_flags &= ~INP_SOCKREF;
  INP_WUNLOCK(inp);
  SOCK_LOCK(so);
  so->so_state &= ~SS_PROTOREF;
  sofree(so);
 } else
  INP_WUNLOCK(inp);
}
